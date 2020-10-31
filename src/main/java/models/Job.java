package models;

import java.util.List;

public class Job {

	private int jobId;
	private String jobName;
	private List<Region> regions;
	
	public Job() {
		super();
	}

	public Job(int jobId, String jobName, List<Region> regions) {
		super();
		this.jobId = jobId;
		this.jobName = jobName;
		this.regions = regions;
	}

	public int getJobId() {
		return jobId;
	}

	public void setJobId(int jobId) {
		this.jobId = jobId;
	}

	public String getJobName() {
		return jobName;
	}

	public void setJobName(String jobName) {
		this.jobName = jobName;
	}

	public List<Region> getRegions() {
		return regions;
	}

	public void setRegions(List<Region> regions) {
		this.regions = regions;
	}

	@Override
	public String toString() {
		return "Job [jobId=" + jobId + ", jobName=" + jobName + ", regions=" + regions + "]";
	}

}
