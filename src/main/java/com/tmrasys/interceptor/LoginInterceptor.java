package com.tmrasys.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.tmrasys.utils.FailedUtils;

public class LoginInterceptor implements HandlerInterceptor {
	Logger logger = Logger.getLogger(getClass());

	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		logger.info("preHandle ..." + handler);
		if (null == request.getSession().getAttribute("user")) {
			response.sendRedirect(request.getContextPath()
					+ FailedUtils.getLoginErrorMessage("请先登录!"));
			return false;
		}
		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// logger.info("postHandle ...");
		// HandlerMethod method = (HandlerMethod) handler;

	}

	@Override
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// logger.info("afterCompletion ...");
	}

}
