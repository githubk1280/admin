package com.tmrasys.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.web.HttpRequestHandler;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class LoginInterceptor implements HandlerInterceptor {
	Logger logger = Logger.getLogger(getClass());

	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		logger.info("preHandle ..." + handler);
		if (handler instanceof HandlerMethod) {
			HandlerMethod method = (HandlerMethod) handler;
			if ("login".equals(request.getParameter("login"))) {
				return true;
			}
			request.getRequestDispatcher("/WEB-INF/jsp/error.jsp").forward(
					request, response);
		} else if (handler instanceof HttpRequestHandler) {
			response.sendRedirect("/admin/error/404.jsp");
		}

		return false;
	}

	@Override
	public void postHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		logger.info("postHandle ...");
		HandlerMethod method = (HandlerMethod) handler;

	}

	@Override
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		logger.info("afterCompletion ...");
	}

}
