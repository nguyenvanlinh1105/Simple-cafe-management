package com.cafe.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.cafe.model.khuVucModel;

public class khuVucMapper implements RowMapper<khuVucModel> {

	@Override
	public khuVucModel mapRow(ResultSet resultSet) {
		khuVucModel khuVuc;
		try {
			khuVuc = new khuVucModel();
			khuVuc.setMaKhuVuc_ID(resultSet.getInt("MaKhuVuc_ID"));
			khuVuc.setTenKhuVuc(resultSet.getString("TenKhuVuc"));
			khuVuc.setMoTa(resultSet.getString("MoTa"));
			return khuVuc;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}

}
