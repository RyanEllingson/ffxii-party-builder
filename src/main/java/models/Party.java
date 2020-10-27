package models;

import java.util.List;

public class Party {

	private List<PartyMember> memberList;
	private List<Esper> espers;
	
	public Party() {
		super();
	}

	public Party(List<PartyMember> memberList, List<Esper> espers) {
		super();
		this.memberList = memberList;
		this.espers = espers;
	}

	public List<PartyMember> getMemberList() {
		return memberList;
	}

	public void setMemberList(List<PartyMember> memberList) {
		this.memberList = memberList;
	}

	public List<Esper> getEspers() {
		return espers;
	}

	public void setEspers(List<Esper> espers) {
		this.espers = espers;
	}

	@Override
	public String toString() {
		return "Party [memberList=" + memberList + ", espers=" + espers + "]";
	}
	
}
