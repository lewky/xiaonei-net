package com.xiaonei.service.intfc;

import java.io.Serializable;
import java.util.List;

import com.xiaonei.base.BaseServiceIntfc;
import com.xiaonei.domain.University;

public interface UniversityServiceIntfc extends BaseServiceIntfc {

	//ͨ�����Һ�ʡ��id��ȡ��ѧ
	public List getUnis(String cid, String proId);
	
	//ͨ����ѧid��ѯ��ѧ
	public University findUniversityById(Serializable id);
}
