package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import models.Job;
import models.License;
import models.LicenseType;
import models.Region;
import models.Unlocker;
import models.UnlockerType;

public class DaoImpl implements Dao {
	
	private Connection conn;
	
	public DaoImpl(Connection conn) {
		this.conn = conn;
	}

	@Override
	public List<Job> getAllJobs() {
		List<Job> jobs = new ArrayList<>();
		String sql = "select job_id, job_name from jobs";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				jobs.add(new Job(
						rs.getInt(1),
						rs.getString(2),
						getRegionsByJob(rs.getInt(1))
						));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return jobs;
	}

	@Override
	public Job getJobById(int jobId) {
		Job job = new Job();
		String sql = "select job_id, job_name from jobs where job_id = ?";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, jobId);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				job.setJobId(rs.getInt(1));
				job.setJobName(rs.getString(2));
				job.setRegions(getRegionsByJob(rs.getInt(1)));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return job;
	}

	@Override
	public List<License> getLicensesByRegion(int regionId) {
		List<License> licenses = new ArrayList<>();
		String sql = "select licenses.license_id, licenses.license_name, licenses.description, licenses.lp_cost, license_types.license_type_id, license_types.license_type, licenses.subtype from license_links inner join licenses on license_links.license_id = licenses.license_id inner join license_types on licenses.license_type_id = license_types.license_type_id where license_links.region_id = ?";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, regionId);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				licenses.add(new License(
						rs.getInt(1),
						rs.getString(2),
						rs.getString(3),
						rs.getInt(4),
						new LicenseType(rs.getInt(5), rs.getString(6)),
						rs.getString(7)
						));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return licenses;
	}

	@Override
	public License getLicenseById(int licenseId) {
		License license = new License();
		String sql = "select licenses.license_id, licenses.license_name, licenses.description, licenses.lp_cost, licenses.license_type_id, license_types.license_type, licenses.subtype from licenses inner join license_types on licenses.license_type_id = license_types.license_type_id where license_id = ?";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, licenseId);
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				license.setLicenseId(rs.getInt(1));
				license.setLicenseName(rs.getString(2));
				license.setDescription(rs.getString(3));
				license.setLpCost(rs.getInt(4));
				license.setLicenseType(new LicenseType(rs.getInt(5), rs.getString(6)));
				license.setSubtype(rs.getString(7));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return license;
	}

	@Override
	public List<Region> getRegionsByJob(int jobId) {
		List<Region> regions = new ArrayList<>();
		String sql = "select region_id, job_id, description from regions where job_id = ?";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, jobId);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				regions.add(new Region(
						rs.getInt(1),
						rs.getInt(2),
						rs.getString(3),
						getLicensesByRegion(rs.getInt(1))
						));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return regions;
	}

	@Override
	public Region getRegionById(int regionId) {
		Region region = new Region();
		String sql = "select region_id, job_id, description from regions where region_id = ?";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, regionId);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				region.setRegionId(rs.getInt(1));
				region.setJobId(rs.getInt(2));
				region.setDescription(rs.getString(3));
				region.setLicenses(getLicensesByRegion(rs.getInt(1)));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return region;
	}
	
	@Override
	public List<Region> getRegionsByUnlocker(int unlockerId) {
		List<Region> regions = new ArrayList<>();
		String sql = "select regions.region_id, regions.job_id, regions.description from regions inner join unlocker_links on regions.region_id = unlocker_links.region_id where unlocker_links.unlocker_id = ?";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, unlockerId);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				regions.add(new Region(
						rs.getInt(1),
						rs.getInt(2),
						rs.getString(3),
						getLicensesByRegion(rs.getInt(1))
						));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return regions;
	}
	
	@Override
	public List<Unlocker> getAllUnlockers() {
		List<Unlocker> unlockers = new ArrayList<>();
		String sql = "select unlockers.unlocker_id, unlocker_types.unlocker_type_id, unlocker_types.unlocker_type, unlockers.unlocker_name, unlockers.unlocker_lp_cost from unlockers inner join unlocker_types on unlockers.unlocker_type_id = unlocker_types.unlocker_type_id";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				unlockers.add(new Unlocker(
						rs.getInt(1),
						new UnlockerType(rs.getInt(2), rs.getString(3)),
						rs.getString(4),
						rs.getInt(5)
						));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return unlockers;
	}

	@Override
	public List<Unlocker> getAllEspers() {
		List<Unlocker> espers = new ArrayList<>();
		String sql = "select unlockers.unlocker_id, unlocker_types.unlocker_type_id, unlocker_types.unlocker_type, unlockers.unlocker_name, unlockers.unlocker_lp_cost from unlockers inner join unlocker_types on unlockers.unlocker_type_id = unlocker_types.unlocker_type_id where unlockers.unlocker_type_id = ?";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, 3);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				espers.add(new Unlocker(
						rs.getInt(1),
						new UnlockerType(rs.getInt(2), rs.getString(3)),
						rs.getString(4),
						rs.getInt(5)
						));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return espers;
	}
	
	@Override
	public List<Unlocker> getAllQuickenings() {
		List<Unlocker> quickenings = new ArrayList<>();
		String sql = "select unlockers.unlocker_id, unlocker_types.unlocker_type_id, unlocker_types.unlocker_type, unlockers.unlocker_name, unlockers.unlocker_lp_cost from unlockers inner join unlocker_types on unlockers.unlocker_type_id = unlocker_types.unlocker_type_id where unlockers.unlocker_type_id = ?";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, 2);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				quickenings.add(new Unlocker(
						rs.getInt(1),
						new UnlockerType(rs.getInt(2), rs.getString(3)),
						rs.getString(4),
						rs.getInt(5)
						));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return quickenings;
	}
	
	@Override
	public Unlocker getUnlockerById(int unlockerId) {
		Unlocker unlocker = new Unlocker();
		String sql = "select unlockers.unlocker_id, unlocker_types.unlocker_type_id, unlocker_types.unlocker_type, unlockers.unlocker_name, unlockers.unlocker_lp_cost from unlockers inner join unlocker_types on unlockers.unlocker_type_id = unlocker_types.unlocker_type_id where unlockers.unlocker_id = ?";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, unlockerId);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				unlocker.setUnlockerId(rs.getInt(1));
				unlocker.setUnlockerType(new UnlockerType(rs.getInt(2), rs.getString(3)));
				unlocker.setUnlockerName(rs.getString(4));
				unlocker.setUnlockerLpCost(rs.getInt(5));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return unlocker;
	}
}
