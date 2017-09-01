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

//注册操作
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

	// 跳转到注册页面 UI:user interface(界面)
	public ActionForward regUI(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		// 准备数据，供用户选择大学
		// 国家
		request.setAttribute("countryList", countryService.getResult("from Country", null));
		// 省和直辖市
		request.setAttribute("provinceList",
				provinceService.getResult("from Province where country.id = ?", new Object[] { new Integer(1) }));
		// 大学名字(默认显示北京)
		request.setAttribute("universityList",
				universityService.getResult("from University where country.id = ? and province.id = ?", new Object[] { new Integer(1),new Integer(1) }));

		return mapping.findForward("regUI");
	}

	// 注册用户，将用户添加到数据库
	public ActionForward regUser(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		//从该action对应的form中取出数据
		UserForm userForm = (UserForm)form;
		
		//取出信息，保存用户
		Users user = new Users();
		user.setEmail(userForm.getEmail());
		user.setLoginDate(new Date());
		user.setName(userForm.getName());
		user.setPwd(userForm.getPwd());
		user.setRegisterDate(new Date());
		user.setSex(userForm.getSex());
		
		System.out.println(userForm.getName());
		
		//获取该用户的大学对象
		University university = universityService.findUniversityById(Integer.valueOf(userForm.getUniversityId()));
		
		//创建用户对应的用户大学记录
		Useruniversity useruniversity = new Useruniversity();
		useruniversity.setUsers(user);
		useruniversity.setUniversity(university);
		useruniversity.setUserType(userForm.getUserType());
		
		//保存用户
		userService.save(user);
		useruniversityService.save(useruniversity);
		
		// 注册成功，跳转到home.jsp
		return mapping.findForward("regOK");
	}
}
