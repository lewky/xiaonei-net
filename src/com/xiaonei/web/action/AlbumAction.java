package com.xiaonei.web.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

//�������صĲ���
public class AlbumAction extends DispatchAction {
	
	//��ת�����ҳ��
	public ActionForward myAlbumUI(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		return mapping.findForward("myAlbumUI");
	}
	
	//��ת����ӻ�ѡ�����ҳ��
	public ActionForward addAlbumUI(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		return mapping.findForward("addAlbumUI");
	}
	
	//��ת����������ͼƬҳ��
	public ActionForward addPhotoUI(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		return mapping.findForward("addPhotoUI");
	}
	
	//��ת����ǰ����ҳ��
	public ActionForward oneAlbumUI(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		return mapping.findForward("oneAlbumUI");
	}
	
	//��ת����ǰ����ĳ��ͼƬҳ��
	public ActionForward onePhotoUI(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		return mapping.findForward("onePhotoUI");
	}
}
