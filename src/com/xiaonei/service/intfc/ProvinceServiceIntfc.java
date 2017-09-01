package com.xiaonei.service.intfc;

import java.util.List;

import com.xiaonei.base.BaseServiceIntfc;

public interface ProvinceServiceIntfc extends BaseServiceIntfc {

	//通过国家id获取省份
	public List getPros(String cid);
}
