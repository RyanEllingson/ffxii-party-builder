package service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controllers.Espers;
import controllers.Jobs;
import controllers.Licenses;
import controllers.Quickenings;
import controllers.Regions;

public class GetRequestHelper {

	public static void process(HttpServletRequest req, HttpServletResponse res) {
		String uri = req.getRequestURI();
		if (uri.matches("/api/espers")) {
			Espers.getAllEspers(req, res);
		} else if (uri.matches("/api/espers/(.*)")) {
			Espers.getEsperById(req, res);
		} else if (uri.matches("/api/jobs")) {
			Jobs.getAllJobs(req, res);
		} else if (uri.matches("/api/jobs/(.*)")) {
			Jobs.getJobById(req, res);
		} else if (uri.matches("/api/licenses/region/(.*)")) {
			Licenses.getLicensesByRegion(req, res);
		} else if (uri.matches("/api/licenses/(.*)")) {
			Licenses.getLicenseById(req, res);
		} else if (uri.matches("/api/quickenings")) {
			Quickenings.getAllQuickenings(req, res);
		} else if (uri.matches("/api/quickenings/(.*)")) {
			Quickenings.getQuickeningById(req, res);
		} else if (uri.matches("/api/regions/job/(.*)")) {
			Regions.getRegionByJob(req, res);
		} else if (uri.matches("/api/regions/(.*)")) {
			Regions.getRegionById(req, res);
		}
	}
}
