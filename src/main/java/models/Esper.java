package models;

public class Esper {

	private int esperId;
	private String esperName;
	private boolean used;
	private int lpCost;
	
	public Esper() {
		super();
	}

	public Esper(int esperId, String esperName, boolean used, int lpCost) {
		super();
		this.esperId = esperId;
		this.esperName = esperName;
		this.used = used;
		this.lpCost = lpCost;
	}

	public int getEsperId() {
		return esperId;
	}

	public void setEsperId(int esperId) {
		this.esperId = esperId;
	}

	public String getEsperName() {
		return esperName;
	}

	public void setEsperName(String esperName) {
		this.esperName = esperName;
	}

	public boolean isUsed() {
		return used;
	}

	public void setUsed(boolean used) {
		this.used = used;
	}

	public int getLpCost() {
		return lpCost;
	}

	public void setLpCost(int lpCost) {
		this.lpCost = lpCost;
	}

	@Override
	public String toString() {
		return "Esper [esperId=" + esperId + ", esperName=" + esperName + ", used=" + used + ", lpCost=" + lpCost + "]";
	}
	
	
}
