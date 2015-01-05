package com.tmrasys.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.Ordered;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.tmrasys.constant.page.PageResourceConstant;
import com.tmrasys.domain.Employee;

/**
 * 访问权限控制
 * 
 * @author James
 * 
 */
public class PriviliegeInterceptor implements HandlerInterceptor, Ordered {
	Logger logger = Logger.getLogger(getClass());

	@Autowired
	private RequestHelper requestHelper;

	@Override
	public int getOrder() {
		return 6;
	}

	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		HttpSession session = request.getSession();
		Employee employee = (Employee) session.getAttribute("user");
		if (employee == null) {
			// not login
			return true;
		}
		if (handler instanceof HandlerMethod) {
			if (!requestHelper.hasPrivilege(request, employee.getEmployeeId())) {
				response.sendRedirect(request.getContextPath()
						+ PageResourceConstant.NO_AUTH_TO_ACCESS);
				return false;
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
