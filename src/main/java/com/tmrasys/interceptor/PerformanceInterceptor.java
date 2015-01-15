package com.tmrasys.interceptor;

import java.util.concurrent.atomic.AtomicLong;

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
public class PerformanceInterceptor implements HandlerInterceptor, Ordered {
	Logger logger = Logger.getLogger(getClass());
	AtomicLong start = new AtomicLong(0);
	AtomicLong end = new AtomicLong(0);

	@Override
	public int getOrder() {
		return 10;
	}

	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		start.set(System.currentTimeMillis());
		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		end.set(System.currentTimeMillis());
		logger.debug("postHandle --" + request.getRequestURI()
				+ " Method Cost ----------"
				+ (System.currentTimeMillis() - start.get()) + "ms");
	}

	@Override
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		logger.debug("afterCompletion --" + request.getRequestURI()
				+ " Render Cost -----"
				+ (System.currentTimeMillis() - end.get()) + "ms");
	}

}
