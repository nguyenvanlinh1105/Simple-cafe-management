package com.cafe.dao.impl;

import java.util.List;

import com.cafe.mapper.menuDoUongMapper;
import com.cafe.model.MenuDoUongModel;

public class menuDoUongDAO extends AbstractDAO<menuDoUongDAO>{

	public List<MenuDoUongModel> findAllMenu() {
		String sql = "select * from dbo.MENUDOUONG";
		return query(sql,new menuDoUongMapper());
	}

}
