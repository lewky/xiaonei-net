package com.xiaonei.web.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;
import org.apache.struts.upload.FormFile;

import com.xiaonei.domain.Users;
import com.xiaonei.service.intfc.UserServiceIntfc;
import com.xiaonei.utils.MyUtils;
import com.xiaonei.web.form.UserForm;

//���ÿ���û������ݲ���
public class ProfileAction extends DispatchAction {

	private UserServiceIntfc userService;
	
	public UserServiceIntfc getUserService() {
		return userService;
	}

	public void setUserService(UserServiceIntfc userService) {
		this.userService = userService;
	}

	//��ת���û���ҳ
	public ActionForward goHomeUI(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		return mapping.findForward("goHomeUI");
	}
	
	//��ת��������ҳ
	public ActionForward goHomePageUI(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		return mapping.findForward("goHomePageUI");
	}
	
	//��ת���ϴ�ͷ��ҳ��
	public ActionForward uploadPhotoUI(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		return mapping.findForward("uploadPhotoUI");
	}
	
	//�ϴ�һ��ͷ��
	public ActionForward uploadPhoto(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		UserForm userForm = (UserForm)form;
		FormFile myPhoto = userForm.getMyPhoto();
		//��session��ȡ����ǰ�û�
		Users user = (Users) request.getSession().getAttribute("loginUser");
		//�ϴ�ͷ��
		String head = MyUtils.uploadHead(request, myPhoto);
		//�޸ĵ�ǰ�û���ͷ������
		user.setPhoto(head);
		userService.update(user);
		
		return mapping.findForward("uploadPhotoUI");
	}
	
}
