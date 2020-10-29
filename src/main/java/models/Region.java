package models;

public class Region {

	private int regionId;
	private Job job;
	private String description;
	
	public Region() {
		super();
	}

	public Region(int regionId, Job job, String description) {
		super();
		this.regionId = regionId;
		this.job = job;
		this.description = description;
	}

	public int getRegionId() {
		return regionId;
	}

	public void setRegionId(int regionId) {
		this.regionId = regionId;
	}

	public Job getJob() {
		return job;
	}

	public void setJob(Job job) {
		this.job = job;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Override
	public String toString() {
		return "Region [regionId=" + regionId + ", job=" + job + ", description=" + description + "]";
	}

	
	
}
