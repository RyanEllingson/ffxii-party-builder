package models;

public class LicenseType {

	private int licenseTypeId;
	private String licenseType;
	
	public LicenseType() {
		super();
	}

	public LicenseType(int licenseTypeId, String licenseType) {
		super();
		this.licenseTypeId = licenseTypeId;
		this.licenseType = licenseType;
	}

	public int getLicenseTypeId() {
		return licenseTypeId;
	}

	public void setLicenseTypeId(int licenseTypeId) {
		this.licenseTypeId = licenseTypeId;
	}

	public String getLicenseType() {
		return licenseType;
	}

	public void setLicenseType(String licenseType) {
		this.licenseType = licenseType;
	}

	@Override
	public String toString() {
		return "LicenseType [licenseTypeId=" + licenseTypeId + ", licenseType=" + licenseType + "]";
	}
	
}
