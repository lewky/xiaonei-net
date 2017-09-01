package com.xiaonei.service.impl;

import java.util.List;

import com.xiaonei.base.BaseServiceImpl;
import com.xiaonei.domain.Users;
import com.xiaonei.service.intfc.UserServiceIntfc;

public class UserServiceImpl extends BaseServiceImpl implements UserServiceIntfc {

	@SuppressWarnings("unchecked")
	@Override
	public Users login(Users user) {

		String hql = "from Users where email = ? and pwd = ?";
		List<Users> list = getResult(hql, new Object[]{user.getEmail(), user.getPwd()});
		if (list.size() == 1) {
			return list.get(0);
		}else {
			return null;
		}
	}
	
}
