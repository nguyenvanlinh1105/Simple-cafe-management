package com.cafe.controller;

import java.io.IOException;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cafe.dao.impl.BanDAO;
import com.cafe.dao.impl.khuVucDAO;
import com.cafe.dao.impl.menuDoUongDAO;
import com.cafe.model.BanModel;
import com.cafe.model.MenuDoUongModel;
import com.cafe.model.khuVucModel;

@WebServlet(urlPatterns= {"/DatDoUong"})
public class DatDoUongController extends HttpServlet{
	@Inject 
	private BanDAO banDAO;
	@Inject 
	private khuVucDAO khuVucDAO;
	@Inject 
	private menuDoUongDAO menuDoUong;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<BanModel> bans =banDAO.findAllBan();
		req.setAttribute("bans",bans );
		
		List<khuVucModel> khuVucList =khuVucDAO.findAllKhuVuc();
		req.setAttribute("khuVuc",khuVucList);
		
		List<MenuDoUongModel> menu =menuDoUong.findAllMenu();
		req.setAttribute("menu",menu );
		
		RequestDispatcher rd = req.getRequestDispatcher("/views/web/datDoUong.jsp");
		rd.forward(req, resp);

	}
}
