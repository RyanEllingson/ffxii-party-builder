package session;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

import dao.Dao;
import models.Job;
import models.License;
import models.Region;
import models.Unlocker;
import util.LicenseList;
import util.UnlockerComparator;

public class PartyMember {

	private int memberId;
	private String memberName;
	private Job job1;
	private Job job2;
	private List<Region> allRegions;
	private List<Region> availableRegions;
	private LicenseList licenses;
	private List<Unlocker> quickenings;
	private List<Unlocker> espers;
	
	public PartyMember(int memberId, String memberName) {
		super();
		this.memberId = memberId;
		this.memberName = memberName;
		this.allRegions = new ArrayList<>();
		this.availableRegions = new ArrayList<>();
		this.quickenings = new ArrayList<>();
		this.espers = new ArrayList<>();
	}
	
	private void populateAllRegions(Dao dao) {
		this.allRegions.clear();
		if (this.job1 != null) {
			List<Region> job1Regions = dao.getRegionsByJob(this.job1.getJobId());
			for (Region region : job1Regions) {
				this.allRegions.add(region);
			}
		}
		if (this.job2 != null) {
			List<Region> job2Regions = dao.getRegionsByJob(this.job2.getJobId());
			for (Region region : job2Regions) {
				this.allRegions.add(region);
			}
		}
	}
	
	public void populateAvailableRegions(Dao dao) {
		this.availableRegions.clear();
		if (this.job1 != null) {
			this.availableRegions.add(dao.getRegionsByJob(this.job1.getJobId()).get(0));
			for (Unlocker esper : this.espers) {
				List<Region> regions = dao.getRegionsByUnlocker(esper.getUnlockerId());
				for (Region region : regions) {
					if (region.getJobId() == this.job1.getJobId()) {
						this.availableRegions.add(region);
					}
				}
			}
			for (Unlocker quickening : this.quickenings) {
				List<Region> regions = dao.getRegionsByUnlocker(quickening.getUnlockerId());
				for (Region region : regions) {
					if (region.getJobId() == this.job1.getJobId()) {
						this.availableRegions.add(region);
					}
				}
			}
		}
		if (this.job2 != null) {
			this.availableRegions.add(dao.getRegionsByJob(this.job2.getJobId()).get(0));
			for (Unlocker esper : this.espers) {
				List<Region> regions = dao.getRegionsByUnlocker(esper.getUnlockerId());
				for (Region region : regions) {
					if (region.getJobId() == this.job2.getJobId()) {
						this.availableRegions.add(region);
					}
				}
			}
			for (Unlocker quickening : this.quickenings) {
				List<Region> regions = dao.getRegionsByUnlocker(quickening.getUnlockerId());
				for (Region region : regions) {
					if (region.getJobId() == this.job2.getJobId()) {
						this.availableRegions.add(region);
					}
				}
			}
		}
		this.licenses = new LicenseList(this.availableRegions);
	}

	public int getMemberId() {
		return memberId;
	}

	public String getMemberName() {
		return memberName;
	}

	public Job getJob1() {
		return job1;
	}

	public void setJob1(Job job1, Dao dao) {
		this.job1 = job1;
		populateAllRegions(dao);
		populateAvailableRegions(dao);
	}

	public Job getJob2() {
		return job2;
	}

	public void setJob2(Job job2, Dao dao) {
		this.job2 = job2;
		populateAllRegions(dao);
		populateAvailableRegions(dao);
	}
	
	private void sortQuickenings() {
		Collections.sort(this.quickenings, new UnlockerComparator());
	}
	
	public boolean addQuickening(int quickeningId, Dao dao) {
		boolean quickeningAvailable = false;
		if (this.quickenings.size() < 3) {
			boolean alreadyAdded = false;
			for (Unlocker quickening : this.quickenings) {
				if (quickening.getUnlockerId() == quickeningId) {
					alreadyAdded = true;
				}
			}
			Unlocker quickening = dao.getUnlockerById(quickeningId);
			if (quickening.getUnlockerId() > 0 && quickening.getUnlockerType().getUnlockerTypeId() == 2 && !alreadyAdded) {
				quickeningAvailable = true;
				this.quickenings.add(quickening);
				populateAvailableRegions(dao);
			}
		}
		sortQuickenings();
		return quickeningAvailable;
	}
	
	public boolean removeQuickening(int quickeningId, Dao dao) {
		boolean hasQuickening = false;
		int index = -1;
		for (int i=0; i<this.quickenings.size(); i++) {
			if (this.quickenings.get(i).getUnlockerId() == quickeningId) {
				index = i;
				hasQuickening = true;
				break;
			}
		}
		if (hasQuickening) {
			this.quickenings.remove(index);
			populateAvailableRegions(dao);
		}
		return hasQuickening;
	}

	public List<Region> getAllRegions() {
		return allRegions;
	}

	public List<Region> getAvailableRegions() {
		return availableRegions;
	}

	public Map<String, Map<String, List<License>>> getLicenses() {
		return licenses.getLicenses();
	}

	public List<Unlocker> getQuickenings() {
		return quickenings;
	}

	public List<Unlocker> getEspers() {
		return espers;
	}

	@Override
	public String toString() {
		return "PartyMember [memberId=" + memberId + ", memberName=" + memberName + ", job1=" + job1 + ", job2=" + job2
				+ ", allRegions=" + allRegions + ", availableRegions=" + availableRegions 
				+ ", licenses=" + licenses + ", quickenings=" + quickenings + ", espers=" + espers + "]";
	}

	
	
}
