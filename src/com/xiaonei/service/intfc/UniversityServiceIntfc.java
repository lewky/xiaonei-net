package com.xiaonei.service.intfc;

import java.io.Serializable;
import java.util.List;

import com.xiaonei.base.BaseServiceIntfc;
import com.xiaonei.domain.University;

public interface UniversityServiceIntfc extends BaseServiceIntfc {

	//通过国家和省份id获取大学
	public List getUnis(String cid, String proId);
	
	//通过大学id查询大学
	public University findUniversityById(Serializable id);
}
