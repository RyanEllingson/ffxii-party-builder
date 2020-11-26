package util;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import models.License;
import models.Region;

public class LicenseList {

	private Set<Integer> licenseSet;
	private Map<String, Map<String, List<License>>> licenses;
	
	public LicenseList(List<Region> regions) {
		this.licenseSet = new HashSet<>();
		this.licenses = new HashMap<>();
		for (Region region : regions) {
			for (License license : region.getLicenses()) {
				String licenseType = license.getLicenseType().getLicenseType();
				String licenseSubtype = license.getSubtype();
				if (this.licenses.keySet().contains(licenseType)) {
					if (this.licenses.get(licenseType).keySet().contains(licenseSubtype)) {
						if (!this.licenseSet.contains(license.getLicenseId())) {
							this.licenseSet.add(license.getLicenseId());
							this.licenses.get(licenseType).get(licenseSubtype).add(license);
						}
					} else {
						this.licenseSet.add(license.getLicenseId());
						this.licenses.get(licenseType).put(licenseSubtype, new ArrayList<>());
						this.licenses.get(licenseType).get(licenseSubtype).add(license);
					}
				} else {
					this.licenseSet.add(license.getLicenseId());
					this.licenses.put(licenseType, new HashMap<>());
					this.licenses.get(licenseType).put(licenseSubtype, new ArrayList<>());
					this.licenses.get(licenseType).get(licenseSubtype).add(license);
				}
			}
		}
		sortLicenses();
	}
	
	private void sortLicenses() {
		for (String licenseType : this.licenses.keySet()) {
			for (String licenseSubType : this.licenses.get(licenseType).keySet()) {
				Collections.sort(this.licenses.get(licenseType).get(licenseSubType), new LicenseComparator());
			}
		}
	}
	
	public Map<String, Map<String, List<License>>> getLicenses() {
		return this.licenses;
	}

	@Override
	public String toString() {
		return "LicenseList [licenses=" + licenses + "]";
	}
	
}
