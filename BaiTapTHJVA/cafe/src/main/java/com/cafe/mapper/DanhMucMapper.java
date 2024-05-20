package com.cafe.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.cafe.model.DanhMucModel;

public class DanhMucMapper implements RowMapper<DanhMucModel> {

	@Override
	public DanhMucModel mapRow(ResultSet resultSet) {
		DanhMucModel danhMuc;
		try {
			danhMuc = new DanhMucModel();
			danhMuc.setMaDanhMuc_ID(resultSet.getInt("MaDanhMuc_ID"));
			danhMuc.setTenDanhMuc(resultSet.getString("TenDanhMuc"));
			danhMuc.setMaDanhMuc_Cha(resultSet.getInt("MaDanhMuc_Cha"));

			return danhMuc;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}

}
