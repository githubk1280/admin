package com.tmrasys.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.tmrasys.constant.page.PageResourceConstant;
import com.tmrasys.domain.Document;
import com.tmrasys.domain.Employee;
import com.tmrasys.service.document.DocumentService;
import com.tmrasys.utils.FileUtils;
import com.tmrasys.utils.JsonResponseUtils;

@Controller
@RequestMapping("/doc")
public class DocumentController {
	Logger logger = Logger.getLogger(getClass());

	@Autowired
	private DocumentService documentService;

	@RequestMapping("/load")
	public ModelAndView load(HttpSession session) {
		Employee employee = (Employee) session.getAttribute("user");
		List<Document> documents = documentService.loadRootFoldersUnderUser(employee.getName());
		ModelAndView view = new ModelAndView();
		view.addObject("docs", documents);
		view.setViewName(PageResourceConstant.DOC_LOAD);
		return view;
	}

//	@RequestMapping("/ajax/delete/")
//	public void createFolder(@PathVariable String name,
//			HttpServletResponse response, HttpSession session)
//			throws IOException {
//		
//	}
	
	@RequestMapping("/ajax/createFolder/{name}")
	public void createFolder(@PathVariable String name,
			HttpServletResponse response, HttpSession session)
			throws IOException {
		Employee employee = (Employee) session.getAttribute("user");
		int exist = documentService.loadRootFolderByUserName(name);
		if (exist > 0) {
			JsonResponseUtils.returnJsonResponse(response, "文件夹名重复，请重新输入!",
					false, 500);
			return ;
		}
		String userName = employee.getName();
		Document d = new Document();
		d.setFileName(name);
		d.setFileOwner(userName);
		d.setFilePath(FileUtils.getRootPath() + userName + File.separator
				+ name);
		d.setFileType(FileType.FOLDER.getType());
		// root node
		d.setParentId(0);
		documentService.insertDocument(d);
		JsonResponseUtils.returnJsonResponse(response, "文件夹创建成功", true, 200);
	}

	public enum FileType {
		FILE(0, "file"), FOLDER(1, "folder");
		private int type;
		private String value;

		FileType(int type, String value) {
			this.value = value;
			this.type = type;
		}

		public int getType() {
			return type;
		}

		public String getValue() {
			return value;
		}

	}

}
