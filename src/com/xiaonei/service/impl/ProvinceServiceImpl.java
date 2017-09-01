package com.xiaonei.service.impl;

import java.util.List;

import com.xiaonei.base.BaseServiceImpl;
import com.xiaonei.service.intfc.ProvinceServiceIntfc;

public class ProvinceServiceImpl extends BaseServiceImpl implements ProvinceServiceIntfc {

	@Override
	public List getPros(String cid) {

		String hql = "from Province where country.id = ?";
		
		return this.getResult(hql, new Object[]{ Integer.valueOf(cid) });
	}
}
