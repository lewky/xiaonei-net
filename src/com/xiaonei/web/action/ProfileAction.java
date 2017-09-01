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

//针对每个用户的数据操作
public class ProfileAction extends DispatchAction {

	private UserServiceIntfc userService;
	
	public UserServiceIntfc getUserService() {
		return userService;
	}

	public void setUserService(UserServiceIntfc userService) {
		this.userService = userService;
	}

	//跳转到用户首页
	public ActionForward goHomeUI(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		return mapping.findForward("goHomeUI");
	}
	
	//跳转到个人主页
	public ActionForward goHomePageUI(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		return mapping.findForward("goHomePageUI");
	}
	
	//跳转到上传头像页面
	public ActionForward uploadPhotoUI(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		return mapping.findForward("uploadPhotoUI");
	}
	
	//上传一个头像
	public ActionForward uploadPhoto(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		UserForm userForm = (UserForm)form;
		FormFile myPhoto = userForm.getMyPhoto();
		//从session中取出当前用户
		Users user = (Users) request.getSession().getAttribute("loginUser");
		//上传头像
		String head = MyUtils.uploadHead(request, myPhoto);
		//修改当前用户的头像名字
		user.setPhoto(head);
		userService.update(user);
		
		return mapping.findForward("uploadPhotoUI");
	}
	
}
