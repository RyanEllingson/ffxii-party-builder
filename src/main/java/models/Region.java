package models;

public class Region {

	private int regionId;
	private Job job;
	
	public Region() {
		super();
	}

	public Region(int regionId, Job job) {
		super();
		this.regionId = regionId;
		this.job = job;
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

	@Override
	public String toString() {
		return "Region [regionId=" + regionId + ", job=" + job + "]";
	}
	
}
