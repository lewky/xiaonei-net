package com.xiaonei.web.action;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import com.xiaonei.domain.University;
import com.xiaonei.domain.Users;
import com.xiaonei.domain.Useruniversity;
import com.xiaonei.service.intfc.CountryServiceIntfc;
import com.xiaonei.service.intfc.ProvinceServiceIntfc;
import com.xiaonei.service.intfc.UniversityServiceIntfc;
import com.xiaonei.service.intfc.UserServiceIntfc;
import com.xiaonei.service.intfc.UseruniversityServiceIntfc;
import com.xiaonei.web.form.UserForm;

//ע�����
public class RegisterAction extends DispatchAction {

	private CountryServiceIntfc countryService;
	private ProvinceServiceIntfc provinceService;
	private UniversityServiceIntfc universityService;
	private UserServiceIntfc userService;
	private UseruniversityServiceIntfc useruniversityService;

	public UseruniversityServiceIntfc getUseruniversityService() {
		return useruniversityService;
	}

	public void setUseruniversityService(UseruniversityServiceIntfc useruniversityService) {
		this.useruniversityService = useruniversityService;
	}

	public UserServiceIntfc getUserService() {
		return userService;
	}

	public void setUserService(UserServiceIntfc userService) {
		this.userService = userService;
	}

	public UniversityServiceIntfc getUniversityService() {
		return universityService;
	}

	public void setUniversityService(UniversityServiceIntfc universityService) {
		this.universityService = universityService;
	}

	public ProvinceServiceIntfc getProvinceService() {
		return provinceService;
	}

	public void setProvinceService(ProvinceServiceIntfc provinceService) {
		this.provinceService = provinceService;
	}

	public CountryServiceIntfc getCountryService() {
		return countryService;
	}

	public void setCountryService(CountryServiceIntfc countryService) {
		this.countryService = countryService;
	}

	// ��ת��ע��ҳ�� UI:user interface(����)
	public ActionForward regUI(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		// ׼�����ݣ����û�ѡ���ѧ
		// ����
		request.setAttribute("countryList", countryService.getResult("from Country", null));
		// ʡ��ֱϽ��
		request.setAttribute("provinceList",
				provinceService.getResult("from Province where country.id = ?", new Object[] { new Integer(1) }));
		// ��ѧ����(Ĭ����ʾ����)
		request.setAttribute("universityList",
				universityService.getResult("from University where country.id = ? and province.id = ?", new Object[] { new Integer(1),new Integer(1) }));

		return mapping.findForward("regUI");
	}

	// ע���û������û���ӵ����ݿ�
	public ActionForward regUser(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		//�Ӹ�action��Ӧ��form��ȡ������
		UserForm userForm = (UserForm)form;
		
		//ȡ����Ϣ�������û�
		Users user = new Users();
		user.setEmail(userForm.getEmail());
		user.setLoginDate(new Date());
		user.setName(userForm.getName());
		user.setPwd(userForm.getPwd());
		user.setRegisterDate(new Date());
		user.setSex(userForm.getSex());
		
		System.out.println(userForm.getName());
		
		//��ȡ���û��Ĵ�ѧ����
		University university = universityService.findUniversityById(Integer.valueOf(userForm.getUniversityId()));
		
		//�����û���Ӧ���û���ѧ��¼
		Useruniversity useruniversity = new Useruniversity();
		useruniversity.setUsers(user);
		useruniversity.setUniversity(university);
		useruniversity.setUserType(userForm.getUserType());
		
		//�����û�
		userService.save(user);
		useruniversityService.save(useruniversity);
		
		// ע��ɹ�����ת��home.jsp
		return mapping.findForward("regOK");
	}
}
