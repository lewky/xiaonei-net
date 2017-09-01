package com.xiaonei.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.xiaonei.domain.Province;
import com.xiaonei.domain.University;
import com.xiaonei.service.intfc.ProvinceServiceIntfc;
import com.xiaonei.service.intfc.UniversityServiceIntfc;

/**
 * 响应用户选择不同国家/省/直辖市的大学信息请求
 */
@WebServlet("/ChangeInfo")
public class ChangeInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/xml;charset=utf-8");
		PrintWriter out = response.getWriter();
		response.setHeader("Cache-Control", "no-cache");

		// 获取页面传递过来的参数
		String proId = request.getParameter("proid");
		String cid = request.getParameter("cid");

		// 获取被web容器接管的spring容器
		WebApplicationContext ctx = WebApplicationContextUtils.getWebApplicationContext(this.getServletContext());
		// 从spring容器中取出bean
		ProvinceServiceIntfc provinceService = (ProvinceServiceIntfc) ctx.getBean("provinceServiceImpl");
		UniversityServiceIntfc universityService = (UniversityServiceIntfc) ctx.getBean("universityServiceImpl");

		StringBuilder res = new StringBuilder();
		if (proId == null || "".equals(proId)) {

			// 获取国家下的省市List
			List<Province> proList = provinceService.getPros(cid);

			res.append("<allProvinces>");

			for (int i = 0; i < proList.size(); i++) {
				Province province = proList.get(i);
				res.append("<province><id>" + province.getId() + "</id><name><![CDATA[" + province.getName() + "]]></name>" + "<cid>" + cid
						+ "</cid></province>");
			}
			res.append("</allProvinces>");
		} else {

			// 获取国家省市下的大学List
			List<University> uniList = universityService.getUnis(cid, proId);

			res.append("<allUniversities>");

			for (int i = 0; i < uniList.size(); i++) {
				University university = uniList.get(i);
				res.append("<uni><id>" + university.getId() + "</id><name><![CDATA[" + university.getName() + "]]></name></uni>");
			}
			res.append("</allUniversities>");
		}

		out.write(res.toString());
		out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
