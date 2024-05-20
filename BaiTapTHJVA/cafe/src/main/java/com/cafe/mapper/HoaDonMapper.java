package com.cafe.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.cafe.model.HoaDonModel;

public class HoaDonMapper implements RowMapper<HoaDonModel> {

	@Override
	public HoaDonModel mapRow(ResultSet resultSet) {
		HoaDonModel hoaDon;
		try {
			hoaDon = new HoaDonModel();
			hoaDon.setMaBan_ID(resultSet.getInt("MaHoaDon_ID"));
			hoaDon.setMaBan_ID(resultSet.getInt("MaBan_ID"));
			hoaDon.setTongTien(resultSet.getDouble("TongTien"));
			hoaDon.setNgayBan(resultSet.getDate("NgayBan"));

			return hoaDon;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}

}
