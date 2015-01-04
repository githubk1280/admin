package com.tmrasys.interceptor;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.Ordered;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.HandlerMapping;
import org.springframework.web.servlet.ModelAndView;

import com.tmrasys.constant.DataCheckTypeConstant;
import com.tmrasys.constant.page.PageResourceConstant;
import com.tmrasys.domain.Employee;
import com.tmrasys.stereotype.DataAccessCheck;

/**
 * 数据访问权限控制
 * 
 * @author James
 * 
 */
public class TmrasysDataAccessInterceptor implements HandlerInterceptor,
		Ordered {
	Logger logger = Logger.getLogger(getClass());

	@Autowired
	private DataCheckHelper checkHelper;

	@Override
	public int getOrder() {
		return 7;
	}

	@SuppressWarnings("unchecked")
	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		if (handler instanceof HandlerMethod) {
			HandlerMethod target = (HandlerMethod) handler;
			DataAccessCheck checkAnno = target
					.getMethodAnnotation(DataAccessCheck.class);
			HttpSession session = request.getSession();
			Employee employee = (Employee) session.getAttribute("user");
			boolean pass = true;
			if (null != checkAnno && checkAnno.forWhat() != null) {
				String[] needCheck = checkAnno.forWhat();
				for (String name : needCheck) {
					Map<String, Object> pathVariable = (Map<String, Object>) request
							.getAttribute(HandlerMapping.URI_TEMPLATE_VARIABLES_ATTRIBUTE);
					if (DataCheckTypeConstant.PROJECT.equals(name)) {
						String projectId = ((String) pathVariable
								.get("projectId"));
						pass = checkHelper.hasAccess(projectId, name,
								employee.getEmployeeId());
					}
					if (DataCheckTypeConstant.CONTRACT.equals(name)) {
						String contractId = ((String) pathVariable
								.get("contractId"));
						pass = checkHelper.hasAccess(contractId, name,
								employee.getEmployeeId());
					}
					if (DataCheckTypeConstant.SAMPLE.equals(name)) {
						String sampleId = ((String) pathVariable
								.get("sampleId"));
						pass = checkHelper.hasAccess(sampleId, name,
								employee.getEmployeeId());
					}
					if (DataCheckTypeConstant.OUTSOURCE.equals(name)) {
						String osId = ((String) pathVariable.get("osId"));
						pass = checkHelper.hasAccess(osId, name,
								employee.getEmployeeId());
					}
					if (DataCheckTypeConstant.CUSTOMER.equals(name)) {
						String customerId = ((String) pathVariable
								.get("customerId"));
						pass = checkHelper.hasAccess(customerId, name,
								employee.getEmployeeId());
					}

				}

				if (!pass) {
					response.sendRedirect(request.getContextPath()
							+ PageResourceConstant.NO_AUTH_TO_ACCESS);
					return false;
				}
			}
		}
		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub

	}

}
