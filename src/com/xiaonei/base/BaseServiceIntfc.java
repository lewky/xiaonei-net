package com.xiaonei.base;

import java.io.Serializable;
import java.util.List;

public interface BaseServiceIntfc {

	//ͨ��һ��hql�ʹ���Ĳ��������Ӧ�Ĳ�ѯ
	public List getResult(String hql, Object[] parameters);
	
	//����һ������
	public void save(Object obj);
	
	//ɾ��һ������
	public void delete(Object obj);
	
	//����һ������
	public void update(Object obj);
	
	//����id����һ������
	public Object findById(Class clazz, Serializable id);
}