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
import session.Party;
import util.ConnectionFactory;

public class Parties {

	public static void getParty(HttpServletRequest req, HttpServletResponse res) {
		try {
			Connection conn = ConnectionFactory.getConnection();
			Dao dao = new DaoImpl(conn);
			ObjectMapper om = new ObjectMapper();
			HttpSession session = req.getSession();
			Party party;
			if (session.getAttribute("party") == null) {
				party = new Party(dao);
				session.setAttribute("party", party);
			} else {
				party = (Party) session.getAttribute("party");
			}
			res.getWriter().write(om.writeValueAsString(party));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public static void assignEsper(HttpServletRequest req, HttpServletResponse res) {
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
				int esperId = jsonNode.get("esperId").asInt();
				String memberName = jsonNode.get("memberName").asText();
				if (party.assignEsper(esperId, memberName, dao)) {
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
	
	public static void unassignEsper(HttpServletRequest req, HttpServletResponse res) {
		try {
			Connection conn = ConnectionFactory.getConnection();
			Dao dao = new DaoImpl(conn);
			ObjectMapper om = new ObjectMapper();
			HttpSession session = req.getSession();
			if (session == null) {
				res.setStatus(400);
			} else {
				String uri = req.getRequestURI();
				String[] params = uri.split("/");
				String memberName = params[3].split("&")[0].split("=")[1];
				int esperId = Integer.parseInt(params[3].split("&")[1].split("=")[1]);
				Party party = (Party) session.getAttribute("party");
				if (party.unassignEsper(esperId, memberName, dao)) {
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
