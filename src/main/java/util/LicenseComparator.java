package util;

import java.util.Comparator;

import models.License;

public class LicenseComparator implements Comparator<License> {

	public LicenseComparator() {
		super();
	}
	
	@Override
	public int compare(License license1, License license2) {
		return license1.getLicenseId() - license2.getLicenseId();
	}
	
}
