package dao;

import java.util.List;

import models.Job;
import models.License;
import models.Region;
import models.Unlocker;

public interface Dao {
	
	public List<Job> getAllJobs();
	
	public Job getJobById(int jobId);
	
	public List<License> getLicensesByRegion(int regionId);
	
	public License getLicenseById(int licenseId);
	
	public List<Region> getRegionsByJob(int jobId);
	
	public Region getRegionById(int regionId);
	
	public List<Region> getRegionsByUnlocker(int unlockerId);
	
	public List<Unlocker> getAllUnlockers();
	
	public List<Unlocker> getAllEspers();
	
	public List<Unlocker> getAllQuickenings();
	
	public Unlocker getUnlockerById(int unlockerId);
}
