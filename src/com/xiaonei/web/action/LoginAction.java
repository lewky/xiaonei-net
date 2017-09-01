package com.xiaonei.web.action;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import com.xiaonei.domain.Users;
import com.xiaonei.service.intfc.UserServiceIntfc;
import com.xiaonei.web.form.UserForm;

public class LoginAction extends DispatchAction {

	private UserServiceIntfc userService;
	
	public UserServiceIntfc getUserService() {
		return userService;
	}

	public void setUserService(UserServiceIntfc userService) {
		this.userService = userService;
	}

	//用户登陆
	public ActionForward login(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		UserForm userForm = (UserForm)form;
		//从表单中取出邮箱和密码，到数据库进行验证
		Users user = new Users();
		user.setEmail(userForm.getEmail());
		user.setPwd(userForm.getPwd());
		user = userService.login(user);
		
		if (user != null) {
			//修改用户登录时间
			user.setLoginDate(new Date());
			userService.update(user);
			//将用户存到session中
			request.getSession().setAttribute("loginUser", user);
			//跳转到主页面
			return mapping.findForward("loginOK");
		}else {
			//登陆失败
			return mapping.findForward("goIndex");
		}
		
	}
	
	//退出登陆
	public ActionForward logout(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		//把当前的session清空
		request.getSession().invalidate();
		
		return mapping.findForward("goIndex");
	}
}
