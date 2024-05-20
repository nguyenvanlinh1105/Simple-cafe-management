package com.cafe.api;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cafe.dao.impl.DoUongCartDAO;
import com.cafe.model.DoUongCartModel;
import com.cafe.utils.HttpUtil;
import com.fasterxml.jackson.databind.ObjectMapper;
@WebServlet(urlPatterns= {"/api-datDoUong"})
public class DatDoUongAPI extends HttpServlet{
	
	@Inject 
	private DoUongCartDAO douong;
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
			ObjectMapper mapper = new ObjectMapper();
			req.setCharacterEncoding("UTF-8");
			resp.setContentType("application/json");
			DoUongCartModel newModel = HttpUtil.of(req.getReader()).toModel(DoUongCartModel.class);
			douong.saveHoaDon(newModel);
			mapper.writeValue(resp.getOutputStream(), "{}");
		}
	@Override
	protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		super.doPut(req, resp);
	}
		
	
}
