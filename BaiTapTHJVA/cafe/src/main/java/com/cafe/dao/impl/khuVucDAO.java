package com.cafe.dao.impl;

import java.util.List;

import com.cafe.mapper.khuVucMapper;
import com.cafe.model.khuVucModel;

public class khuVucDAO extends AbstractDAO<khuVucDAO> {

	public List<khuVucModel> findAllKhuVuc() {
		String sql = "select * from dbo.KHUVUC";
		return query(sql,new khuVucMapper());
	}

}
