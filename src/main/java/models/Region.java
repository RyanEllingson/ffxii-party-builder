package models;

import java.util.List;

public class Region {

	private int regionId;
	private int jobId;
	private String description;
	private List<License> licenses;
	
	public Region() {
		super();
	}

	public Region(int regionId, int jobId, String description, List<License> licenses) {
		super();
		this.regionId = regionId;
		this.jobId = jobId;
		this.description = description;
		this.licenses = licenses;
	}

	public int getRegionId() {
		return regionId;
	}

	public void setRegionId(int regionId) {
		this.regionId = regionId;
	}

	public int getJobId() {
		return jobId;
	}

	public void setJobId(int jobId) {
		this.jobId = jobId;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public List<License> getLicenses() {
		return licenses;
	}

	public void setLicenses(List<License> licenses) {
		this.licenses = licenses;
	}

	@Override
	public String toString() {
		return "Region [regionId=" + regionId + ", jobId=" + jobId + ", description=" + description + ", licenses="
				+ licenses + "]";
	}

	
}
