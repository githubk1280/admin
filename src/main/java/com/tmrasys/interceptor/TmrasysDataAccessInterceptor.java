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
import com.tmrasys.service.project.ProjectService;
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
	private ProjectService projectService;

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
			if (null != checkAnno) {
				String[] needCheck = checkAnno.forWhat();
				for (String name : needCheck) {
					Map<String, Object> pathVariable = (Map<String, Object>) request
							.getAttribute(HandlerMapping.URI_TEMPLATE_VARIABLES_ATTRIBUTE);
					if (DataCheckTypeConstant.PROJECT.equals(name)) {
//						logger.info(pathVariable.get("projectId"));
						int projectId = Integer.parseInt((String) pathVariable
								.get("projectId"));

						if (projectService.hasAccessAuth(employee.getEmployeeId(), projectId)) {
							break;
						} else {
							response.sendRedirect(request.getContextPath()
									+ PageResourceConstant.NO_AUTH_TO_ACCESS);
							return false;
						}
					}
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
