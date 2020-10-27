package models;

public class Quickening {

	private int quickeningId;
	private String quickeningName;
	private int lpCost;
	
	public Quickening() {
		super();
	}

	public Quickening(int quickeningId, String quickeningName, int lpCost) {
		super();
		this.quickeningId = quickeningId;
		this.quickeningName = quickeningName;
		this.lpCost = lpCost;
	}

	public int getQuickeningId() {
		return quickeningId;
	}

	public void setQuickeningId(int quickeningId) {
		this.quickeningId = quickeningId;
	}

	public String getQuickeningName() {
		return quickeningName;
	}

	public void setQuickeningName(String quickeningName) {
		this.quickeningName = quickeningName;
	}

	public int getLpCost() {
		return lpCost;
	}

	public void setLpCost(int lpCost) {
		this.lpCost = lpCost;
	}

	@Override
	public String toString() {
		return "Quickening [quickeningId=" + quickeningId + ", quickeningName=" + quickeningName + ", lpCost=" + lpCost
				+ "]";
	}
	
}
