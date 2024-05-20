package com.cafe.dao.impl;

import com.cafe.model.DoUongCartModel;

public class DoUongCartDAO extends AbstractDAO<DoUongCartDAO> {

	public void saveHoaDon(DoUongCartModel newModel) {
		String sql = "{CALL ThemChiTietHoaDonDoUong(?, ?, ?)}";
		 insertDichVu(sql,newModel.getMaBan_ID(), newModel.getMaDoUong_ID(),  newModel.getSoLuong());
		
	}

}
