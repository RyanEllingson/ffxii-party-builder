package service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controllers.Parties;
import controllers.PartyMembers;

public class DeleteRequestHelper {

	public static void process(HttpServletRequest req, HttpServletResponse res) {
		String uri = req.getRequestURI();
		if (uri.matches("/api/esper/member=(.*)&esperId=(.*)")) {
			Parties.unassignEsper(req, res);
		} else if (uri.matches("/api/quickening/member=(.*)&quickeningId=(.*)")) {
			PartyMembers.removeQuickening(req, res);
		}
	}
}
