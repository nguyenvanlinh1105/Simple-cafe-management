package com.cafe.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.cafe.model.DoUongCartModel;

public class DoUongCartMapper implements RowMapper<DoUongCartModel>{
	@Override
	public DoUongCartModel mapRow(ResultSet resultSet) {
		DoUongCartModel doUong;
		try {
			doUong = new DoUongCartModel();
			doUong.setMaBan_ID(resultSet.getInt("maBan_ID"));
			doUong.setMaKhuVuc_ID(resultSet.getInt("maKhuVuc_ID"));
			doUong.setMaDoUong_ID(resultSet.getInt("maDoUong_ID"));
			doUong.setMaHoaDon_ID(resultSet.getInt("maHoaDon_ID"));
			doUong.setSoLuong(resultSet.getInt("soLuong"));
			return doUong;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}

}
