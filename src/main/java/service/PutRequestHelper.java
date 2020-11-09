package service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controllers.PartyMembers;

public class PutRequestHelper {

	public static void process(HttpServletRequest req, HttpServletResponse res) {
		String uri = req.getRequestURI();
		if (uri.matches("/api/job1")) {
			PartyMembers.setJob1(req, res);
		} else if (uri.matches("/api/job2")) {
			PartyMembers.setJob2(req, res);
		}
	}
}
