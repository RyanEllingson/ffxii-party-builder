package dao;

import java.util.List;

import models.Esper;
import models.Job;
import models.License;
import models.LicenseType;
import models.Quickening;
import models.Region;

public interface Dao {

	public List<Esper> getAllEspers();
	
	public Esper getEsperById(int esperId);
	
	public List<Job> getAllJobs();
	
	public Job getJobById(int jobId);
	
	public List<License> getLicensesByRegion(int regionId);
	
	public License getLicenseById(int licenseId);
	
	public List<Quickening> getAllQuickenings();
	
	public Quickening getQuickeningById(int quickeningId);
	
	public List<Region> getRegionsByJob(int jobId);
	
	public Region getRegionById(int regionId);
}
