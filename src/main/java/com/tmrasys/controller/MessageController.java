package com.tmrasys.controller;

import java.io.IOException;
import java.util.List;
import java.util.concurrent.ExecutionException;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.tmrasys.constant.CacheNames;
import com.tmrasys.constant.page.PageResourceConstant;
import com.tmrasys.constant.page.PaginationConstant;
import com.tmrasys.domain.Employee;
import com.tmrasys.domain.Message;
import com.tmrasys.domain.MessageText;
import com.tmrasys.enums.MessageStatusEnum;
import com.tmrasys.service.cache.GlobalCache;
import com.tmrasys.service.message.MessageService;
import com.tmrasys.utils.CacheUtils;
import com.tmrasys.utils.JsonResponseUtils;

@Controller
@RequestMapping("/message")
public class MessageController {
	Logger logger = Logger.getLogger(getClass());

	@Autowired
	private MessageService messageService;

	@Autowired
	private GlobalCache cacheService;

	@RequestMapping("/ajax/query")
	public void query(HttpSession session, HttpServletResponse response)
			throws IOException, ExecutionException {
		Employee employee = ((Employee) session.getAttribute("user"));
		int count = 0;
		Object cacheResult = cacheService.getKey(String.format(
				CacheNames.MESSAGE_COUNT, employee.getEmployeeId()));
		if (CacheUtils.isEmpty(cacheResult)) {
			count = messageService.getMessagesCountByReceiveId(employee
					.getEmployeeId());
			cacheService.putKey(
					String.format(CacheNames.MESSAGE_COUNT,
							employee.getEmployeeId()), count);
		} else {
			count = (Integer) cacheResult;
		}
		JsonResponseUtils.returnJsonResponse(response, count, true, 200);
	}

	@RequestMapping("/list")
	public ModelAndView list(int p, HttpSession session) {
		Employee employee = (Employee) session.getAttribute("user");
		List<Message> messages = messageService.getFullMessagesByReceiveId(
				employee.getEmployeeId(), p,
				PaginationConstant.DEFAULT_PAGE_SIZE);
		ModelAndView view = new ModelAndView();
		view.setViewName(PageResourceConstant.MSG_LIST);
		view.addObject("messages", messages);
		return view;
	}

	@RequestMapping("/ajax/msgText/{msgId}/{tId}")
	public void loadMsgText(@PathVariable int msgId, @PathVariable int tId,
			HttpServletResponse response, HttpSession session)
			throws IOException {
		Employee employee = (Employee) session.getAttribute("user");
		MessageText msgText = messageService.getMessageTextById(tId);
		// 更新
		messageService.updateMessageStatus(msgId,
				MessageStatusEnum.READ.getValue());
		// invalidate cache
		cacheService.invalidate(String.format(CacheNames.MESSAGE_COUNT,
				employee.getEmployeeId()));
		JsonResponseUtils.returnJsonResponse(response, msgText.getMsgText(),
				true, 200);
	}

	@RequestMapping("/ajax/status/{msgId}")
	public void changeMessageStatus(@PathVariable int msgId,
			HttpServletResponse response, HttpSession session)
			throws IOException {
		Employee employee = (Employee) session.getAttribute("user");
		// 更新
		messageService.updateMessageStatus(msgId,
				MessageStatusEnum.READ.getValue());
		// invalidate cache
		cacheService.invalidate(String.format(CacheNames.MESSAGE_COUNT,
				employee.getEmployeeId()));
		JsonResponseUtils.returnJsonResponse(response, "done", true, 200);
	}
}
