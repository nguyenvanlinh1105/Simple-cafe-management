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
import com.cafe.dao.impl.SanPhamDoUongCartDAO;
import com.cafe.model.BanModel;
import com.cafe.model.SanPhamDoUongCartModel;
import com.cafe.utils.MessageUtil;

@WebServlet(urlPatterns= {"/web-checkout"})
public class CheckOutController extends HttpServlet{
	@Inject 
	private SanPhamDoUongCartDAO SanPhamDoUongCartDAO;
	@Inject 
	private BanDAO banDAO;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String maBan = req.getParameter("maBan_ID");
		List<SanPhamDoUongCartModel> sanPham =SanPhamDoUongCartDAO.findAllSanPham(maBan);
		req.setAttribute("sanPham",sanPham );
		List<BanModel> bans =banDAO.findAllBan();
		req.setAttribute("bans",bans );
		req.setAttribute("tongTien", SanPhamDoUongCartDAO.tinhTongTien());
		MessageUtil.showMessage(req);
		RequestDispatcher rd = req.getRequestDispatcher("/views/web/checkout.jsp");
		rd.forward(req, resp);

	}
}
