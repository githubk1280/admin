package com.tmrasys.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.tmrasys.constant.page.PageResourceConstant;
import com.tmrasys.constant.page.PaginationConstant;
import com.tmrasys.domain.Literature;
import com.tmrasys.service.literature.LiteratureService;
import com.tmrasys.utils.FileUtils;

@Controller
@RequestMapping("/literature")
public class LiteratureController {
	Logger logger = Logger.getLogger(getClass());

	@Autowired
	private LiteratureService literatureService;

	@PostConstruct
	public void init() {
		FileUtils.createLiteratureFolder();
	}

	@RequestMapping("/list")
	public ModelAndView list(int pageIndex) {
		List<Literature> lts = literatureService.loadAllLiteratures(pageIndex,
				PaginationConstant.DEFAULT_PAGE_SIZE);
		int totalCount = literatureService.getTotalCount();
		ModelAndView view = new ModelAndView();
		view.setViewName(PageResourceConstant.LTS_LIST);
		view.addObject("lts", lts);
		view.addObject("total", totalCount);
		return view;
	}

	@RequestMapping("/add-redirect")
	public ModelAndView addRedirect() {
		ModelAndView view = new ModelAndView();
		// Literature lte = new Literature();
		// view.addObject("lte", lte);
		view.setViewName(PageResourceConstant.LTS_ADD);
		return view;
	}

	@RequestMapping("/add")
	public ModelAndView uploadFile(@RequestParam("file") MultipartFile file,
			String title, String author, String publishDate, String location,
			String abstracts, String filePath, String direction,
			String background, String technicalWay, String technicalPlatform,
			String conclusion, String lightPoint, String researchEnlightenment,
			String productEnlightenment, String platformEnlightenment,
			String comments, String problem, String attachedHotSpot)
			throws IllegalStateException, IOException, ParseException {
		ModelAndView view = new ModelAndView();
		view.setViewName("redirect:/literature/list?pageIndex=1");

		String path = FileUtils.getLiteraturePath();
		String fileName = file.getOriginalFilename();
		logger.info("------" + file.getSize() + "------" + path);
		File targetFile = new File(path, fileName);
		if (targetFile.exists()) {
			// 文件存在
			view.setViewName("redirect:/literature/add-redirect?reason=文件已经存在");
			return view;
		} else {
			targetFile.mkdirs();
			logger.info("start uploading ..");
			file.transferTo(targetFile);
			logger.info("upload success !");
		}

		Literature lte = new Literature(title, author, parse(publishDate),
				location, abstracts, targetFile.getAbsolutePath(), direction,
				background, technicalWay, technicalPlatform, conclusion,
				lightPoint, researchEnlightenment, productEnlightenment,
				platformEnlightenment, comments, problem, attachedHotSpot);
		literatureService.insert(lte);

		logger.info("upload Literature file add to db success !");

		return view;

	}

	@RequestMapping("/download/{id}")
	public void downloadFile(@PathVariable("id") int id,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		Literature lte = literatureService.loadById(id);
		String filePath = lte.getFilePath();
		String fileName = filePath.replace(FileUtils.getLiteraturePath(), "");
		logger.info("-----------starting download------------" + filePath);
		File targetFile = new File(filePath);
		if (!targetFile.exists()) {
			return;
		}
		response.setContentType("application/x-msdownload;");
		response.setHeader("Content-disposition", "attachment; filename="
				+ new String(fileName.replaceAll("_", ".").getBytes("utf-8"),
						"ISO8859-1"));
		response.setHeader("Content-Length",
				String.valueOf(targetFile.length()));

		BufferedInputStream in = null;
		BufferedOutputStream out = null;
		try {
			in = new BufferedInputStream(new FileInputStream(targetFile));
			out = new BufferedOutputStream(response.getOutputStream());
			byte[] buffer = new byte[1048];
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
	}

	private Date parse(String publishDate) throws ParseException {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		return sdf.parse(publishDate);
	}

	@RequestMapping("/{literatureId}")
	public ModelAndView literatureDetail(@PathVariable int literatureId) {
		Literature lte = literatureService.loadById(literatureId);
		ModelAndView view = new ModelAndView();
		view.setViewName(PageResourceConstant.LTS_DETAIL);
		view.addObject("lte", lte);
		return view;
	}

	@RequestMapping("/update")
	public ModelAndView update(Literature literature) {
		literatureService.update(literature);
		ModelAndView view = new ModelAndView();
		view.setViewName(PageResourceConstant.LTS_DETAIL);
		view.addObject("lte", literature);
		return view;
	}
}
