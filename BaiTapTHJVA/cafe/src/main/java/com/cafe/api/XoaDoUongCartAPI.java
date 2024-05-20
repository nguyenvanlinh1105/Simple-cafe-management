package com.cafe.api;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cafe.dao.impl.SanPhamDoUongCartDAO;
import com.cafe.model.DoUongCartModel;
import com.cafe.utils.HttpUtil;
import com.fasterxml.jackson.databind.ObjectMapper;
@WebServlet(urlPatterns= {"/api-xoaDoUong"})
public class XoaDoUongCartAPI extends HttpServlet{
	
	@Inject 
	private SanPhamDoUongCartDAO sanphamDAO;
	protected void doDelete(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
			ObjectMapper mapper = new ObjectMapper();
			req.setCharacterEncoding("UTF-8");
			resp.setContentType("application/json");
			DoUongCartModel newModel = HttpUtil.of(req.getReader()).toModel(DoUongCartModel.class);
			sanphamDAO.deleteChiTietHoaDon(newModel.getIds());
			mapper.writeValue(resp.getOutputStream(), "{}");
		}
	
		
	
}
