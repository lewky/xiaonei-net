package com.xiaonei.base;

import java.io.Serializable;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

@Transactional
public class BaseServiceImpl implements BaseServiceIntfc {

	@Resource
	private SessionFactory sessionFactory;
	
	/**
	 * @author Lewis
	 * @param hql 传入的hql语句，可以带?
	 * @param parameters 问号对应的参数数组
	 */
	@Override
	public List getResult(String hql, Object[] parameters) {

		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		//注入?
		if (parameters != null && parameters.length > 0) {
			for (int i = 0; i < parameters.length; i++) {
				query.setParameter(i, parameters[i]);
			}
		}
		
		return query.list();
	}

	@Override
	public void save(Object obj) {

		sessionFactory.getCurrentSession().save(obj);
	}

	@Override
	public void delete(Object obj) {

		sessionFactory.getCurrentSession().delete(obj);
	}

	@Override
	public void update(Object obj) {

		sessionFactory.getCurrentSession().update(obj);
	}

	@Override
	public Object findById(Class clazz, Serializable id) {

		return sessionFactory.getCurrentSession().get(clazz, id);
	}
}
