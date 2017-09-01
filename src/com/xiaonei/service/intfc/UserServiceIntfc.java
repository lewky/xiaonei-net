package com.xiaonei.service.intfc;

import com.xiaonei.base.BaseServiceIntfc;
import com.xiaonei.domain.Users;

public interface UserServiceIntfc extends BaseServiceIntfc {

	// 通过邮箱和密码进行登陆，如果用户不存在则返回null
	public Users login(Users user);

}
