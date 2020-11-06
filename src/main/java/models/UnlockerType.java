package models;

public class UnlockerType {

	private int unlockerTypeId;
	private String unlockerType;
	
	public UnlockerType() {
		super();
	}

	public UnlockerType(int unlockerTypeId, String unlockerType) {
		super();
		this.unlockerTypeId = unlockerTypeId;
		this.unlockerType = unlockerType;
	}

	public int getUnlockerTypeId() {
		return unlockerTypeId;
	}

	public void setUnlockerTypeId(int unlockerTypeId) {
		this.unlockerTypeId = unlockerTypeId;
	}

	public String getUnlockerType() {
		return unlockerType;
	}

	public void setUnlockerType(String unlockerType) {
		this.unlockerType = unlockerType;
	}

	@Override
	public String toString() {
		return "UnlockerType [unlockerTypeId=" + unlockerTypeId + ", unlockerType=" + unlockerType + "]";
	}
	
	
}
