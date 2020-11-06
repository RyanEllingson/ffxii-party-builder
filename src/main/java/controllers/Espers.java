package controllers;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

import dao.Dao;
import dao.DaoImpl;
import util.ConnectionFactory;

public class Espers {

	public static void getAllEspers(HttpServletRequest req, HttpServletResponse res) {
		try {
			Connection conn = ConnectionFactory.getConnection();
			Dao dao = new DaoImpl(conn);
			ObjectMapper om = new ObjectMapper();
			res.getWriter().write(om.writeValueAsString(dao.getAllEspers()));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
}
