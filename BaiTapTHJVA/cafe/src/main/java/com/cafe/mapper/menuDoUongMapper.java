package com.cafe.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.cafe.model.MenuDoUongModel;

public class menuDoUongMapper implements RowMapper<MenuDoUongModel>{
	@Override
	public MenuDoUongModel mapRow(ResultSet resultSet) {
		MenuDoUongModel menu;
		try {
			menu = new MenuDoUongModel();
			menu.setMaDoUong_ID(resultSet.getInt("MaDoUong_ID"));
			menu.setTenDoUong(resultSet.getString("TenDoUong"));
			menu.setDonGia(resultSet.getDouble("DonGia"));
			menu.setMaDanhMuc_ID(resultSet.getInt("MaDanhMuc_ID"));
			return menu;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
	
}
