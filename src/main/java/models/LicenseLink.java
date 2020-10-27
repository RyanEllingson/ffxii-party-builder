package models;

public class LicenseLink {

	private int licenseLinkId;
	private License license;
	private Region region;
	
	public LicenseLink() {
		super();
	}

	public LicenseLink(int licenseLinkId, License license, Region region) {
		super();
		this.licenseLinkId = licenseLinkId;
		this.license = license;
		this.region = region;
	}

	public int getLicenseLinkId() {
		return licenseLinkId;
	}

	public void setLicenseLinkId(int licenseLinkId) {
		this.licenseLinkId = licenseLinkId;
	}

	public License getLicense() {
		return license;
	}

	public void setLicense(License license) {
		this.license = license;
	}

	public Region getRegion() {
		return region;
	}

	public void setRegion(Region region) {
		this.region = region;
	}

	@Override
	public String toString() {
		return "LicenseLink [licenseLinkId=" + licenseLinkId + ", license=" + license + ", region=" + region + "]";
	}
	
}
