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
import models.Esper;
import models.Job;
import models.License;
import models.Quickening;
import models.Region;
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
		List<Esper> result = dao.getAllEspers();
		assertEquals(13, result.size());
	}
	
	@Test
	public void testGetEsperById() {
		Esper result = dao.getEsperById(13);
		assertEquals("Zodiark", result.getEsperName());
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
		List<Quickening> result = dao.getAllQuickenings();
		assertEquals(4, result.size());
	}
	
	@Test
	public void testGetQuickeningById() {
		Quickening result = dao.getQuickeningById(4);
		assertEquals(125, result.getLpCost());
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
	
	@AfterClass
	public static void cleanup() {
		try {
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
