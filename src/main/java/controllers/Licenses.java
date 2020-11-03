package controllers;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

import dao.Dao;
import dao.DaoImpl;
import util.ConnectionFactory;

public class Licenses {

	public static void getLicensesByRegion(HttpServletRequest req, HttpServletResponse res) {
		try {
			Connection conn = ConnectionFactory.getConnection();
			Dao dao = new DaoImpl(conn);
			ObjectMapper om = new ObjectMapper();
			String[] params = req.getRequestURI().split("/");
			res.getWriter().write(om.writeValueAsString(dao.getLicensesByRegion(Integer.parseInt(params[4]))));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public static void getLicenseById(HttpServletRequest req, HttpServletResponse res) {
		try {
			Connection conn = ConnectionFactory.getConnection();
			Dao dao = new DaoImpl(conn);
			ObjectMapper om = new ObjectMapper();
			String[] params = req.getRequestURI().split("/");
			res.getWriter().write(om.writeValueAsString(dao.getLicenseById(Integer.parseInt(params[3]))));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
