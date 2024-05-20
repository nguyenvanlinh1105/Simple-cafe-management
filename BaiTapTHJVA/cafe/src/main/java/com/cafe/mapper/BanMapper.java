package com.cafe.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.cafe.model.BanModel;

public class BanMapper implements RowMapper<BanModel>{

	@Override
	public BanModel mapRow(ResultSet resultSet) {
		BanModel ban;
		try {
			ban = new BanModel();
			ban.setMaBan_ID(resultSet.getInt("MaBan_ID"));
			ban.setTenBan(resultSet.getString("TenBan"));
			ban.setTrangThai(resultSet.getString("TrangThai"));
			ban.setMoTa(resultSet.getString("MoTa"));
			ban.setMaKhuVuc_ID(resultSet.getString("MaKhuVuc_ID"));
			return ban;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}

}