package service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controllers.Parties;
import controllers.PartyMembers;

public class PostRequestHelper {

	public static void process(HttpServletRequest req, HttpServletResponse res) {
		String uri = req.getRequestURI();
		if (uri.matches("/api/esper")) {
			Parties.assignEsper(req, res);
		} else if (uri.matches("/api/quickening")) {
			PartyMembers.addQuickening(req, res);
		}
	}
}
