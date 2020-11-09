package session;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import dao.Dao;
import models.Unlocker;

public class Party {

	private Map<String, PartyMember> members;
	private List<Unlocker> availableEspers;
	
	public Party(Dao dao) {
		super();
		this.members = new HashMap<>();
		this.members.put("Vaan", new PartyMember(1, "Vaan"));
		this.members.put("Balthier", new PartyMember(2, "Balthier"));
		this.members.put("Fran", new PartyMember(3, "Fran"));
		this.members.put("Basch", new PartyMember(4, "Basch"));
		this.members.put("Ashe", new PartyMember(5, "Ashe"));
		this.members.put("Penelo", new PartyMember(6, "Penelo"));
		this.availableEspers = new ArrayList<>();
		List<Unlocker> espers = dao.getAllEspers();
		for (Unlocker esper : espers) {
			this.availableEspers.add(esper);
		}
	}

	public Map<String, PartyMember> getMembers() {
		return this.members;
	}
	
	public List<Unlocker> getAvailableEspers() {
		return this.availableEspers;
	}
}
