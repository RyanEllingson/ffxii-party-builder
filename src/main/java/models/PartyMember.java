package models;

import java.util.List;

public class PartyMember {

	private int memberId;
	private String memberName;
	private Job job1;
	private Job job2;
	private List<Region> allRegions;
	private List<Region> availableRegions;
	private List<License> availableLicenses;
	private List<Quickening> quickenings;
	private List<Esper> espers;
	
	public PartyMember() {
		super();
	}

	public PartyMember(int memberId, String memberName, Job job1, Job job2, List<Region> allRegions,
			List<Region> availableRegions, List<License> availableLicenses, List<Quickening> quickenings,
			List<Esper> espers) {
		super();
		this.memberId = memberId;
		this.memberName = memberName;
		this.job1 = job1;
		this.job2 = job2;
		this.allRegions = allRegions;
		this.availableRegions = availableRegions;
		this.availableLicenses = availableLicenses;
		this.quickenings = quickenings;
		this.espers = espers;
	}

	public int getMemberId() {
		return memberId;
	}

	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public Job getJob1() {
		return job1;
	}

	public void setJob1(Job job1) {
		this.job1 = job1;
	}

	public Job getJob2() {
		return job2;
	}

	public void setJob2(Job job2) {
		this.job2 = job2;
	}

	public List<Region> getAllRegions() {
		return allRegions;
	}

	public void setAllRegions(List<Region> allRegions) {
		this.allRegions = allRegions;
	}

	public List<Region> getAvailableRegions() {
		return availableRegions;
	}

	public void setAvailableRegions(List<Region> availableRegions) {
		this.availableRegions = availableRegions;
	}

	public List<License> getAvailableLicenses() {
		return availableLicenses;
	}

	public void setAvailableLicenses(List<License> availableLicenses) {
		this.availableLicenses = availableLicenses;
	}

	public List<Quickening> getQuickenings() {
		return quickenings;
	}

	public void setQuickenings(List<Quickening> quickenings) {
		this.quickenings = quickenings;
	}

	public List<Esper> getEspers() {
		return espers;
	}

	public void setEspers(List<Esper> espers) {
		this.espers = espers;
	}

	@Override
	public String toString() {
		return "PartyMember [memberId=" + memberId + ", memberName=" + memberName + ", job1=" + job1 + ", job2=" + job2
				+ ", allRegions=" + allRegions + ", availableRegions=" + availableRegions + ", availableLicenses="
				+ availableLicenses + ", quickenings=" + quickenings + ", espers=" + espers + "]";
	}

	
}
