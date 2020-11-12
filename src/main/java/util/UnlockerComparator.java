package util;

import java.util.Comparator;

import models.Unlocker;

public class UnlockerComparator implements Comparator<Unlocker> {

	public UnlockerComparator() {
		super();
	}
	
	@Override
	public int compare(Unlocker unlocker1, Unlocker unlocker2) {
		return unlocker1.getUnlockerId() - unlocker2.getUnlockerId();
	}

}
