package models;

import java.util.List;

public class PartyMember {

	private String memberName;
	private Job job1;
	private Job job2;
	private List<License> allLicenses;
	private List<License> availableLicenses;
	private List<Quickening> quickenings;
	private List<Esper> espers;
	
	public PartyMember() {
		super();
	}

	public PartyMember(String memberName, Job job1, Job job2, List<License> allLicenses,
			List<License> availableLicenses, List<Quickening> quickenings, List<Esper> espers) {
		super();
		this.memberName = memberName;
		this.job1 = job1;
		this.job2 = job2;
		this.allLicenses = allLicenses;
		this.availableLicenses = availableLicenses;
		this.quickenings = quickenings;
		this.espers = espers;
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

	public List<License> getAllLicenses() {
		return allLicenses;
	}

	public void setAllLicenses(List<License> allLicenses) {
		this.allLicenses = allLicenses;
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
		return "PartyMember [memberName=" + memberName + ", job1=" + job1 + ", job2=" + job2 + ", allLicenses="
				+ allLicenses + ", availableLicenses=" + availableLicenses + ", quickenings=" + quickenings
				+ ", espers=" + espers + "]";
	}

}
