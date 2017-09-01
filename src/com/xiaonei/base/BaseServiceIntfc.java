package com.xiaonei.base;

import java.io.Serializable;
import java.util.List;

public interface BaseServiceIntfc {

	//通过一个hql和传入的参数完成相应的查询
	public List getResult(String hql, Object[] parameters);
	
	//保存一个对象
	public void save(Object obj);
	
	//删除一个对象
	public void delete(Object obj);
	
	//更新一个对象
	public void update(Object obj);
	
	//根据id返回一个对象
	public Object findById(Class clazz, Serializable id);
}
