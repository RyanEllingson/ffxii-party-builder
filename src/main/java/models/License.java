package models;

public class License {

	private int licenseId;
	private String licenseName;
	private String description;
	private int lpCost;
	private LicenseType licenseType;
	private String subtype;
	
	public License() {
		super();
	}

	public License(int licenseId, String licenseName, String description, int lpCost, LicenseType licenseType,
			String subtype) {
		super();
		this.licenseId = licenseId;
		this.licenseName = licenseName;
		this.description = description;
		this.lpCost = lpCost;
		this.licenseType = licenseType;
		this.subtype = subtype;
	}

	public int getLicenseId() {
		return licenseId;
	}

	public void setLicenseId(int licenseId) {
		this.licenseId = licenseId;
	}

	public String getLicenseName() {
		return licenseName;
	}

	public void setLicenseName(String licenseName) {
		this.licenseName = licenseName;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getLpCost() {
		return lpCost;
	}

	public void setLpCost(int lpCost) {
		this.lpCost = lpCost;
	}

	public LicenseType getLicenseType() {
		return licenseType;
	}

	public void setLicenseType(LicenseType licenseType) {
		this.licenseType = licenseType;
	}

	public String getSubtype() {
		return subtype;
	}

	public void setSubtype(String subtype) {
		this.subtype = subtype;
	}

	@Override
	public String toString() {
		return "License [licenseId=" + licenseId + ", licenseName=" + licenseName + ", description=" + description
				+ ", lpCost=" + lpCost + ", licenseType=" + licenseType + ", subtype=" + subtype + "]";
	}
	
}
