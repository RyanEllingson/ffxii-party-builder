package test;

import static org.junit.Assert.assertEquals;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;

import dao.Dao;
import dao.DaoImpl;
import models.Job;
import models.License;
import models.Region;
import models.Unlocker;
import util.ConnectionFactory;

public class DaoTest {

	private static Connection conn;
	private static Dao dao;
	
	@BeforeClass
	public static void setup() {
		conn = ConnectionFactory.getConnection();
		dao = new DaoImpl(conn);
	}
	
	@Test
	public void testGetAllEspers() {
		List<Unlocker> result = dao.getAllEspers();
		assertEquals(13, result.size());
	}
	
	@Test
	public void testGetUnlockerById() {
		Unlocker result = dao.getUnlockerById(18);
		assertEquals("Zodiark", result.getUnlockerName());
		assertEquals("Esper", result.getUnlockerType().getUnlockerType());
	}
	
	@Test
	public void testGetAllJobs() {
		List<Job> result = dao.getAllJobs();
		assertEquals(12, result.size());
	}
	
	@Test
	public void testGetJobById() {
		Job result = dao.getJobById(1);
		assertEquals("Archer", result.getJobName());
	}
	
	@Test
	public void testGetAllQuickenings() {
		List<Unlocker> result = dao.getAllQuickenings();
		assertEquals(4, result.size());
	}
	
	@Test
	public void testGetLicensesByRegion() {
		List<License> result = dao.getLicensesByRegion(2);
		assertEquals(2, result.size());
	}
	
	@Test
	public void testGetLicenseById() {
		License result = dao.getLicenseById(1);
		assertEquals("Attack & Items", result.getDescription());
	}
	
	@Test
	public void testGetRegionsByJob() {
		List<Region> result = dao.getRegionsByJob(1);
		assertEquals(6, result.size());
	}
	
	@Test
	public void testGetRegionById() {
		Region result = dao.getRegionById(2);
		assertEquals("Unlocked by Famfrit", result.getDescription());
	}
	
	@Test
	public void testGetRegionsByUnlocker() {
		List<Region> result = dao.getRegionsByUnlocker(6);
		assertEquals(3, result.size());
	}
	
}
