package com.cafe.dao.impl;

import java.util.List;

import com.cafe.mapper.BanMapper;
import com.cafe.model.BanModel;;
public class BanDAO extends AbstractDAO<BanDAO>{

	public List<BanModel> findAllBan() {
		String sql = "select * from dbo.BAN";
		return query(sql,new BanMapper());
	}

}
