package com.tmrasys.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.core.Ordered;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

/**
 * 访问权限控制
 * 
 * @author James
 * 
 */
public class PriviliegeInterceptor implements HandlerInterceptor, Ordered {
	Logger logger = Logger.getLogger(getClass());

	// @Autowired
	// private EmployeeService employeeService;

	@Override
	public int getOrder() {
		return 6;
	}

	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		// HandlerMethod target = (HandlerMethod) handler;
		// Priviliege priviliegeAnno = target.getBean().getClass()
		// .getAnnotation(Priviliege.class);
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
