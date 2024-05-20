package com.cafe.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.cafe.model.SanPhamDoUongCartModel;

public class SanPhamDoUongCartMapper implements RowMapper<SanPhamDoUongCartModel>{

	@Override
	public SanPhamDoUongCartModel mapRow(ResultSet resultSet) {
		SanPhamDoUongCartModel sanPham;
		try {
			sanPham = new SanPhamDoUongCartModel();
			sanPham.setMaHoaDon_ID(resultSet.getInt("maHoaDon_ID"));
			sanPham.setMaChiTiet_ID(resultSet.getInt("maChiTiet_ID"));
			sanPham.setMaBan_ID(resultSet.getInt("maBan_ID"));
			sanPham.setDonGia(resultSet.getDouble("donGia"));
			sanPham.setThanhTien(resultSet.getDouble("thanhTien"));
			sanPham.setTenDoUong(resultSet.getString("tenDoUong"));
			sanPham.setTenBan(resultSet.getString("tenBan"));
			sanPham.setSoLuong(resultSet.getInt("soLuong"));
			return sanPham;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
	
}
