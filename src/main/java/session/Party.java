package session;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import dao.Dao;
import models.Unlocker;
import util.UnlockerComparator;

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
	
	private void sortEspers(List<Unlocker> espers) {
		Collections.sort(espers, new UnlockerComparator());
	}
	
	public boolean assignEsper(int esperId, String memberName, Dao dao) {
		boolean esperAvailable = false;
		Unlocker chosenEsper = null;
		PartyMember member = this.members.get(memberName);
		int index = -1;
		for (int i=0; i<this.availableEspers.size(); i++) {
			if (this.availableEspers.get(i).getUnlockerId() == esperId) {
				chosenEsper = this.availableEspers.get(i);
				index = i;
				esperAvailable = true;
			}
		}
		if (esperAvailable && !(member == null)) {
			member.getEspers().add(chosenEsper);
			this.availableEspers.remove(index);
			sortEspers(member.getEspers());
			member.populateAvailableRegions(dao);
		}
		return esperAvailable;
	}
	
	public boolean unassignEsper(int esperId, String memberName, Dao dao) {
		boolean esperAssigned = false;
		Unlocker chosenEsper = null;
		int index = -1;
		PartyMember member = this.members.get(memberName);
		for (int i=0; i<member.getEspers().size(); i++) {
			if (member.getEspers().get(i).getUnlockerId() == esperId) {
				index = i;
				chosenEsper = member.getEspers().get(i);
				esperAssigned = true;
				break;
			}
		}
		if (esperAssigned) {
			member.getEspers().remove(index);
			this.availableEspers.add(chosenEsper);
			sortEspers(this.availableEspers);
			member.populateAvailableRegions(dao);
		}
		return esperAssigned;
	}
}
