package test;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNull;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;

import dao.Dao;
import dao.DaoImpl;
import models.Unlocker;
import session.Party;
import session.PartyMember;
import util.ConnectionFactory;

public class PartyTest {

	private static Connection conn;
	private static Dao dao;
	private static Party party;
	
	@BeforeClass
	public static void setup() {
		conn = ConnectionFactory.getConnection();
		dao = new DaoImpl(conn);
		party = new Party(dao);
		party.getMembers().get("Vaan").setJob1(dao.getJobById(4), dao);
		party.getMembers().get("Ashe").setJob2(dao.getJobById(4), dao);
		party.assignEsper(12, "Ashe", dao);
		party.getMembers().get("Balthier").setJob1(dao.getJobById(4), dao);
	}
	
	@Test
	public void testPopulateEspers() {
		List<Unlocker> espers = party.getAvailableEspers();
		assertEquals(12, espers.size());
		assertEquals("Zodiark", espers.get(11).getUnlockerName());
	}
	
	@Test
	public void testSetJob1() {
		PartyMember vaan = party.getMembers().get("Vaan");
		assertEquals("Monk", vaan.getJob1().getJobName());
		assertNull(vaan.getJob2());
	}
	
	@Test
	public void testSetJob2() {
		PartyMember ashe = party.getMembers().get("Ashe");
		assertEquals("Monk", ashe.getJob2().getJobName());
		assertNull(ashe.getJob1());
	}
	
	@Test
	public void testInitialPopulateRegions() {
		PartyMember vaan = party.getMembers().get("Vaan");
		assertEquals(1, vaan.getAvailableRegions().size());
		assertEquals(12, vaan.getAllRegions().size());
	}
	
	@Test
	public void testInitialPopulateLicenses() {
		PartyMember vaan = party.getMembers().get("Vaan");
		assertEquals(16, vaan.getLicenses().get("Augmentations").get("Battle Lore").keySet().size());
		assertNull(vaan.getLicenses().get("White Magick"));
		assertEquals(1, vaan.getLicenses().get("Augmentations").get("Phoenix Lore").keySet().size());
	}
	
	@Test
	public void testAssignEsper() {
		PartyMember ashe = party.getMembers().get("Ashe");
		assertEquals(1, ashe.getEspers().size());
		assertEquals(2, ashe.getAvailableRegions().size());
		assertEquals(1, ashe.getLicenses().get("White Magick").get("White Magick").keySet().size());
		assertEquals(false, party.assignEsper(12, "Balthier", dao));
		assertEquals(12, party.getAvailableEspers().size());
		assertEquals(true, party.unassignEsper(12, "Ashe", dao));
		assertEquals(13, party.getAvailableEspers().size());
		assertEquals(0, ashe.getEspers().size());
		assertNull(ashe.getLicenses().get("White Magick"));
		assertEquals(false, party.unassignEsper(12, "Ashe", dao));
	}
	
	@Test
	public void testAssignQuickenings() {
		PartyMember balthier = party.getMembers().get("Balthier");
		assertEquals(true, balthier.addQuickening(5, dao));
		assertEquals(1, balthier.getQuickenings().size());
		assertEquals("Quickening 4", balthier.getQuickenings().get(0).getUnlockerName());
		assertEquals(false, balthier.addQuickening(5, dao));
		assertEquals(1, balthier.getQuickenings().size());
		assertEquals(2, balthier.getLicenses().get("Augmentations").get("Phoenix Lore").keySet().size());
		assertEquals(true, balthier.removeQuickening(5, dao));
		assertEquals(1, balthier.getLicenses().get("Augmentations").get("Phoenix Lore").keySet().size());
		assertEquals(0, balthier.getQuickenings().size());
		assertEquals(false, balthier.removeQuickening(5, dao));
	}

}
