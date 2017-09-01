package com.xiaonei.web.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

//和相册相关的操作
public class AlbumAction extends DispatchAction {
	
	//跳转到相册页面
	public ActionForward myAlbumUI(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		return mapping.findForward("myAlbumUI");
	}
	
	//跳转到添加或选择相册页面
	public ActionForward addAlbumUI(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		return mapping.findForward("addAlbumUI");
	}
	
	//跳转到给相册添加图片页面
	public ActionForward addPhotoUI(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		return mapping.findForward("addPhotoUI");
	}
	
	//跳转到当前相册的页面
	public ActionForward oneAlbumUI(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		return mapping.findForward("oneAlbumUI");
	}
	
	//跳转到当前相册的某张图片页面
	public ActionForward onePhotoUI(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		return mapping.findForward("onePhotoUI");
	}
}
