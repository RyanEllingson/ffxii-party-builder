package models;

public class Unlocker {

	private int unlockerId;
	private UnlockerType unlockerType;
	private String unlockerName;
	private int unlockerLpCost;
	
	public Unlocker() {
		super();
	}

	public Unlocker(int unlockerId, UnlockerType unlockerType, String unlockerName, int unlockerLpCost) {
		super();
		this.unlockerId = unlockerId;
		this.unlockerType = unlockerType;
		this.unlockerName = unlockerName;
		this.unlockerLpCost = unlockerLpCost;
	}

	public int getUnlockerId() {
		return unlockerId;
	}

	public void setUnlockerId(int unlockerId) {
		this.unlockerId = unlockerId;
	}

	public UnlockerType getUnlockerType() {
		return unlockerType;
	}

	public void setUnlockerType(UnlockerType unlockerType) {
		this.unlockerType = unlockerType;
	}

	public String getUnlockerName() {
		return unlockerName;
	}

	public void setUnlockerName(String unlockerName) {
		this.unlockerName = unlockerName;
	}

	public int getUnlockerLpCost() {
		return unlockerLpCost;
	}

	public void setUnlockerLpCost(int unlockerLpCost) {
		this.unlockerLpCost = unlockerLpCost;
	}

	@Override
	public String toString() {
		return "Unlocker [unlockerId=" + unlockerId + ", unlockerType=" + unlockerType + ", unlockerName="
				+ unlockerName + ", unlockerLpCost=" + unlockerLpCost + "]";
	}
	
	
}
