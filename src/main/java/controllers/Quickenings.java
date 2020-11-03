package controllers;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

import dao.Dao;
import dao.DaoImpl;
import util.ConnectionFactory;

public class Quickenings {

	public static void getAllQuickenings(HttpServletRequest req, HttpServletResponse res) {
		try {
			Connection conn = ConnectionFactory.getConnection();
			Dao dao = new DaoImpl(conn);
			ObjectMapper om = new ObjectMapper();
			res.getWriter().write(om.writeValueAsString(dao.getAllQuickenings()));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public static void getQuickeningById(HttpServletRequest req, HttpServletResponse res) {
		try {
			Connection conn = ConnectionFactory.getConnection();
			Dao dao = new DaoImpl(conn);
			ObjectMapper om = new ObjectMapper();
			String[] params = req.getRequestURI().split("/");
			res.getWriter().write(om.writeValueAsString(dao.getQuickeningById(Integer.parseInt(params[3]))));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
