package com.xiaonei.service.intfc;

import com.xiaonei.base.BaseServiceIntfc;
import com.xiaonei.domain.Users;

public interface UserServiceIntfc extends BaseServiceIntfc {

	// ͨ�������������е�½������û��������򷵻�null
	public Users login(Users user);

}
