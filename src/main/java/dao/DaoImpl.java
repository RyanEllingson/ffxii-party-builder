package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import models.Esper;
import models.Job;
import models.License;
import models.LicenseType;
import models.Quickening;
import models.Region;

public class DaoImpl implements Dao {
	
	private Connection conn;
	
	public DaoImpl(Connection conn) {
		this.conn = conn;
	}

	@Override
	public List<Esper> getAllEspers() {
		List<Esper> espers = new ArrayList<>();
		String sql = "select esper_id, esper_name, lp_cost from espers";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				espers.add(new Esper(
						rs.getInt(1),
						rs.getString(2),
						false,
						rs.getInt(3)
						));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return espers;
	}

	@Override
	public Esper getEsperById(int esperId) {
		Esper esper = new Esper();
		String sql = "select esper_id, esper_name, lp_cost from espers where esper_id = ?";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, esperId);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				esper.setEsperId(rs.getInt(1));
				esper.setEsperName(rs.getString(2));
				esper.setUsed(false);
				esper.setLpCost(rs.getInt(3));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return esper;
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
	public List<Quickening> getAllQuickenings() {
		List<Quickening> quickenings = new ArrayList<>();
		String sql = "select quickening_id, quickening_name, lp_cost from quickenings";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				quickenings.add(new Quickening(
						rs.getInt(1),
						rs.getString(2),
						rs.getInt(3)
						));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return quickenings;
	}

	@Override
	public Quickening getQuickeningById(int quickeningId) {
		Quickening quickening = new Quickening();
		String sql = "select quickening_id, quickening_name, lp_cost from quickenings where quickening_id = ?";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, quickeningId);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				quickening.setQuickeningId(rs.getInt(1));
				quickening.setQuickeningName(rs.getString(2));
				quickening.setLpCost(rs.getInt(3));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return quickening;
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

}
