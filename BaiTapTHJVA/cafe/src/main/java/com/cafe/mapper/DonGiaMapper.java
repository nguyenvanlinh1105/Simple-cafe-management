package com.cafe.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.cafe.model.DonGiaModel;

public class DonGiaMapper implements RowMapper<DonGiaModel>{
	@Override
	public DonGiaModel mapRow(ResultSet resultSet) {
		DonGiaModel ban;
		try {
			ban = new DonGiaModel();
			ban.setDonGia_ID(resultSet.getInt("DonGia_ID"));
			ban.setMaDoUong_ID(resultSet.getInt("MaDoUong_ID"));
			ban.setTuNgay(resultSet.getDate("TuNgay"));
			ban.setDenNgay(resultSet.getDate("DenNgay"));
			ban.setMoTa(resultSet.getString("MoTa"));
			return ban;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}

}