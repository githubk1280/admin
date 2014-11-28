package com.tmrasys.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;

import javax.annotation.PostConstruct;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.tmrasys.domain.Project;
import com.tmrasys.service.project.ProjectService;

@Controller
@RequestMapping("/test")
public class DataTestController {
	Logger logger = Logger.getLogger(getClass());
	
	@Autowired
	ProjectService dataService;

	@PostConstruct
	public void init() {
		logger.info("post ----------------------" + dataService);
	}

	@RequestMapping("/load/it")
	public ModelAndView loadProjectById() {
		Project project = dataService.loadProjectById(1);
		ModelAndView view = new ModelAndView();
		view.addObject("project", project);
		view.setViewName("/upload/upload");
		return view;

	}
	
	@RequestMapping("test/upload")
	public String uploadFile(@RequestParam("file") MultipartFile file,
			HttpServletRequest request, ModelMap model) {
		String path = "e:/upload";
		String fileName = file.getOriginalFilename();
		// String fileName = new Date().getTime()+".jpg";
		System.out.println("::::::::::::::::::::::::::::::::::::::::"+path);
		File targetFile = new File(path, fileName);
		if (!targetFile.exists()) {
			targetFile.mkdirs();
		}

		// ????
		try {
			file.transferTo(targetFile);
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("fileUrl", request.getContextPath() + "/upload/"
				+ fileName);

		return "result";

	}

	@RequestMapping("/download/{fileName}")
	public String uploadFile(@PathVariable("fileName") String fileName,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String path = "c:/upload";
		String filePath = path + File.separator + fileName;
		filePath = filePath.replaceAll("_", ".");
		System.out.println(filePath);
		File targetFile = new File(filePath);
		if (!targetFile.exists()) {
			request.setAttribute("exception", new Exception(
					"No file found for " + fileName));
		}
		response.setContentType("application/x-msdownload;");
		response.setHeader("Content-disposition", "attachment; filename="
				+ new String(fileName.replaceAll("_", ".").getBytes("utf-8"), "ISO8859-1"));
		response.setHeader("Content-Length",
				String.valueOf(targetFile.length()));

		BufferedInputStream in = null;
		BufferedOutputStream out = null;
		try {
			in = new BufferedInputStream(new FileInputStream(targetFile));
			out = new BufferedOutputStream(response.getOutputStream());
			byte[] buffer = new byte[2048];
			int bytesRead = 0;
			while (-1 != (bytesRead = in.read(buffer, 0, buffer.length))) {
				out.write(buffer, 0, bytesRead);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (in != null) {
				in.close();
			}
			if (out != null) {
				out.close();
			}
		}

		return null;

	}

}
