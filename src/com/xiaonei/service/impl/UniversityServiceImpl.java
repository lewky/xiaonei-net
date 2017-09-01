package com.xiaonei.service.impl;

import java.io.Serializable;
import java.util.List;

import com.xiaonei.base.BaseServiceImpl;
import com.xiaonei.domain.University;
import com.xiaonei.service.intfc.UniversityServiceIntfc;

public class UniversityServiceImpl extends BaseServiceImpl implements UniversityServiceIntfc {

	@Override
	public List getUnis(String cid, String proId) {

		String hql = "from University where country.id = ? and province.id = ?";
		
		return this.getResult(hql, new Object[] {Integer.valueOf(cid), Integer.valueOf(proId)});
	}
	
	@Override
	public University findUniversityById(Serializable id) {

		return (University) findById(University.class, id);
	}
}
