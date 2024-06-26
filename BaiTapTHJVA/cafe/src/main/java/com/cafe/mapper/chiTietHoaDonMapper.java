package com.cafe.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.cafe.model.chiTietHoaDonModel;

public class chiTietHoaDonMapper implements RowMapper<chiTietHoaDonModel> {

	@Override
	public chiTietHoaDonModel mapRow(ResultSet resultSet) {
		chiTietHoaDonModel chitiethoaDon;
		try {
			chitiethoaDon = new chiTietHoaDonModel();
			chitiethoaDon.setMaChiTiet_ID(resultSet.getInt("MaChiTiet_ID"));
			chitiethoaDon.setMaHoaDon_ID(resultSet.getInt("MaHoaDon_ID"));
			chitiethoaDon.setMaDoUong_ID(resultSet.getInt("MaDoUong_ID"));
			chitiethoaDon.setDonGia(resultSet.getDouble("DonGia"));
			chitiethoaDon.setSoLuong(resultSet.getInt("SoLuong"));
			return chitiethoaDon;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}

}
