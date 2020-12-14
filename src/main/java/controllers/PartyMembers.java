package controllers;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

import dao.Dao;
import dao.DaoImpl;
import models.Job;
import session.Party;
import session.PartyMember;
import util.ConnectionFactory;

public class PartyMembers {

	public static void setJob1(HttpServletRequest req, HttpServletResponse res) {
		try {
			Connection conn = ConnectionFactory.getConnection();
			Dao dao = new DaoImpl(conn);
			ObjectMapper om = new ObjectMapper();
			JsonNode jsonNode = om.readTree(req.getReader());
			HttpSession session = req.getSession(false);
			if (session != null) {
				Party party = (Party) session.getAttribute("party");
				PartyMember member = party.getMembers().get(jsonNode.get("memberName").asText());
				int jobId = jsonNode.get("jobId").asInt();
				if (jobId == 0) {
					member.setJob1(null, dao);
				} else {
					Job job = dao.getJobById(jobId);
					member.setJob1(job, dao);
				}
				session.setAttribute("party", party);
				res.setStatus(200);
				res.getWriter().write(om.writeValueAsString(party));
			} else {
				res.setStatus(400);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public static void setJob2(HttpServletRequest req, HttpServletResponse res) {
		try {
			Connection conn = ConnectionFactory.getConnection();
			Dao dao = new DaoImpl(conn);
			ObjectMapper om = new ObjectMapper();
			JsonNode jsonNode = om.readTree(req.getReader());
			HttpSession session = req.getSession(false);
			if (session != null) {
				Party party = (Party) session.getAttribute("party");
				PartyMember member = party.getMembers().get(jsonNode.get("memberName").asText());
				int jobId = jsonNode.get("jobId").asInt();
				if (jobId == 0) {
					member.setJob2(null, dao);
				} else {
					Job job = dao.getJobById(jobId);
					member.setJob2(job, dao);
				}
				session.setAttribute("party", party);
				res.setStatus(200);
				res.getWriter().write(om.writeValueAsString(party));
			} else {
				res.setStatus(400);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public static void addQuickening(HttpServletRequest req, HttpServletResponse res) {
		try {
			Connection conn = ConnectionFactory.getConnection();
			Dao dao = new DaoImpl(conn);
			ObjectMapper om = new ObjectMapper();
			JsonNode jsonNode = om.readTree(req.getReader());
			HttpSession session = req.getSession(false);
			if (session == null) {
				res.setStatus(400);
			} else {
				Party party = (Party) session.getAttribute("party");
				PartyMember member = party.getMembers().get(jsonNode.get("memberName").asText());
				int quickeningId = jsonNode.get("quickeningId").asInt();
				if (member.addQuickening(quickeningId, dao)) {
					res.setStatus(200);
					session.setAttribute("party", party);
					res.getWriter().write(om.writeValueAsString(party));
				} else {
					res.setStatus(400);
				}
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public static void removeQuickening(HttpServletRequest req, HttpServletResponse res) {
		try {
			Connection conn = ConnectionFactory.getConnection();
			Dao dao = new DaoImpl(conn);
			ObjectMapper om = new ObjectMapper();
			JsonNode jsonNode = om.readTree(req.getReader());
			HttpSession session = req.getSession(false);
			if (session == null) {
				res.setStatus(400);
			} else {
				String uri = req.getRequestURI();
				String[] params = uri.split("/");
				String memberName = params[3].split("&")[0].split("=")[1];
				int quickeningId = Integer.parseInt(params[3].split("&")[1].split("=")[1]);
//				int quickeningId = jsonNode.get("quickeningId").asInt();
//				String memberName = jsonNode.get("memberName").asText();
				Party party = (Party) session.getAttribute("party");
				PartyMember member = party.getMembers().get(memberName);
				if (member.removeQuickening(quickeningId, dao)) {
					session.setAttribute("party", party);
					res.setStatus(200);
					res.getWriter().write(om.writeValueAsString(party));
				} else {
					res.setStatus(400);
				}
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
