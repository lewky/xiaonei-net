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

	//�û���½
	public ActionForward login(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		UserForm userForm = (UserForm)form;
		//�ӱ���ȡ����������룬�����ݿ������֤
		Users user = new Users();
		user.setEmail(userForm.getEmail());
		user.setPwd(userForm.getPwd());
		user = userService.login(user);
		
		if (user != null) {
			//�޸��û���¼ʱ��
			user.setLoginDate(new Date());
			userService.update(user);
			//���û��浽session��
			request.getSession().setAttribute("loginUser", user);
			//��ת����ҳ��
			return mapping.findForward("loginOK");
		}else {
			//��½ʧ��
			return mapping.findForward("goIndex");
		}
		
	}
	
	//�˳���½
	public ActionForward logout(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		//�ѵ�ǰ��session���
		request.getSession().invalidate();
		
		return mapping.findForward("goIndex");
	}
}
