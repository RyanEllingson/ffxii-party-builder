package controllers;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
			if (session.getAttribute("party") == null) {
				session.setAttribute("party", new Party(dao));
			}
			res.getWriter().write(om.writeValueAsString((Party) session.getAttribute("party")));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
