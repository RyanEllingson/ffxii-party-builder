package models;

import java.util.List;
import java.util.Map;

public class PartyMember {

	private int memberId;
	private String memberName;
	private Job job1;
	private Job job2;
	private List<Region> allRegions;
	private List<Region> availableRegions;
	private Map<String, Map<String, List<License>>> licenseList;
	private List<Unlocker> quickenings;
	private List<Unlocker> espers;
	
	public PartyMember() {
		super();
	}

	
}
