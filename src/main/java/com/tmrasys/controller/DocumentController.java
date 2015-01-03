package com.tmrasys.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.task.TaskExecutor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
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

	@Autowired
	private TaskExecutor taskExecutor;

	@RequestMapping("/load")
	public ModelAndView load(HttpSession session) {
		Employee employee = (Employee) session.getAttribute("user");
		List<Document> documents = documentService
				.loadRootFoldersUnderUser(employee.getName());
		// DB里创建默认5个文件夹
		if (null != documents && documents.size() < 5) {
			addDefaultFolders();
			documents = documentService.loadRootFoldersUnderUser("admin");
			// 文件系统创建用户文件夹
			FileUtils.createFolder(FileUtils.getRootPath());
		}
		ModelAndView view = new ModelAndView();
		view.addObject("docs", documents);
		view.setViewName(PageResourceConstant.DOC_LOAD);
		return view;
	}

	private void addDefaultFolders() {
		Document d = null;
		for (DefaultFolderNameEnum dName : DefaultFolderNameEnum.values()) {
			d = new Document();
			d.setFileId(dName.getValue());
			d.setFileName(dName.getChLabelValue());
			d.setFileOwner("admin");
			d.setFileOwnerId(0);
			d.setFilePath(FileUtils.getRootPath() + dName.getChLabelValue());
			d.setFileType(FileTypeEnum.FOLDER.getType());
			// root node
			d.setParentId(0);
			documentService.insertDocument(d);
		}
	}

	@SuppressWarnings("unused")
	private void asynAddDefaultFolders(final String userName, final int userId) {
		logger.info("Insert default 5 folders !");
		taskExecutor.execute(new Runnable() {

			@Override
			public void run() {
				Document d = null;
				for (DefaultFolderNameEnum dName : DefaultFolderNameEnum
						.values()) {
					d = new Document();
					d.setFileName(dName.getChLabelValue());
					d.setFileOwner(userName);
					d.setFileOwnerId(userId);
					d.setFilePath(userName + File.separator
							+ dName.getChLabelValue());
					d.setFileType(FileTypeEnum.FOLDER.getType());
					// root node
					d.setParentId(0);
					documentService.insertDocument(d);
				}
			}

		});

	}

	@RequestMapping("/load/{folderId}")
	public ModelAndView loadFiles(@PathVariable int folderId,
			HttpSession session) {
		Employee employee = (Employee) session.getAttribute("user");
		List<Document> documents = documentService.loadFilesUnderByFolderId(
				employee.getName(), folderId, FileTypeEnum.FILE.getType());
		ModelAndView view = new ModelAndView();
		Document parent = null;
		parent = documentService.loadDocumentById(folderId);
		view.addObject("docs", documents);
		view.addObject("parent", parent);
		view.setViewName(PageResourceConstant.DOC_LIST);
		return view;
	}

	@RequestMapping("/upload/{parentId}")
	public ModelAndView uploadFile(@RequestParam("file") MultipartFile file,
			@PathVariable int parentId, HttpServletRequest request,
			HttpSession session) throws IllegalStateException, IOException {
		ModelAndView view = new ModelAndView();
		view.setViewName("redirect:/doc/load/" + parentId);

		Document parent = documentService.loadDocumentById(parentId);
		String path = parent.getFilePath();
		String fileName = file.getOriginalFilename();
		logger.info(":::::::::::::" + file.getSize()
				+ ":::::::::::::::::::::::::::" + path);
		File targetFile = new File(path, fileName);
		if (!targetFile.exists()) {
			targetFile.mkdirs();
		}
		logger.info("start uploading ..");
		file.transferTo(targetFile);
		logger.info("upload success !");

		Employee employee = (Employee) session.getAttribute("user");
		Document d = new Document();
		String fName = targetFile.getName();
		d.setFileName(fName);
		String userName = employee.getName();
		d.setFileOwner(userName);
		d.setFileOwnerId(employee.getEmployeeId());
		d.setFilePath(FileUtils.getRootPath() + userName + File.separator
				+ parent.getFileName() + File.separator + fName);
		d.setFileType(FileTypeEnum.FILE.getType());
		d.setParentId(parentId);
		documentService.insertDocument(d);
		logger.info("upload file add to db success !");

		return view;

	}

	@RequestMapping("/download/{fileId}")
	public void downloadFile(@PathVariable("fileId") int fileId,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		Document current = documentService.loadDocumentById(fileId);
		String filePath = current.getFilePath();
		filePath = filePath.replaceAll("_", ".");
		String fileName = current.getFileName();
		logger.info("-----------starting download------------" + filePath);
		File targetFile = new File(filePath);
		if (!targetFile.exists()) {
			request.setAttribute("exception", new Exception(
					"No file found for " + fileName));
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
	}

	@RequestMapping("/ajax/delete/{fileId}")
	public void deleteFile(@PathVariable int fileId,
			HttpServletResponse response, HttpSession session)
			throws IOException {
		Employee employee = (Employee) session.getAttribute("user");
		Document current = documentService.loadDocumentById(fileId);
		if (null == current) {
			JsonResponseUtils.returnJsonResponse(response, "文件不存在或已删除!", false,
					500);
			return;
		}
		File f = new File(current.getFilePath());
		if (f.exists()) {
			if (f.isFile() || (f.isDirectory() && f.list().length < 1)) {
				f.delete();
			} else {
				File[] children = f.listFiles();
				for (File c : children) {
					if (c.isFile())
						c.delete();
				}
				f.delete();
			}
		} else {
			JsonResponseUtils.returnJsonResponse(response, "文件不存在或已删除!", false,
					500);
			return;
		}
		documentService.deleteFolderById(fileId, current.getFileType(),
				employee.getName());
		JsonResponseUtils.returnJsonResponse(response, "文件删除成功!", true, 200);
	}

	@RequestMapping("/ajax/createFolder/{name}")
	public void createFolder(@PathVariable String name,
			HttpServletResponse response, HttpSession session)
			throws IOException {
		name = new String(name.getBytes("ISO-8859-1"), "UTF-8");
		Employee employee = (Employee) session.getAttribute("user");
		String ownerName = employee.getName();
		if (isNameDuplicate(ownerName, name)) {
			JsonResponseUtils.returnJsonResponse(response, "文件夹已经存，请重新输入!",
					false, 500);
			return;
		}
		String userName = employee.getName();
		String folderDir = FileUtils.getRootPath() + userName + File.separator
				+ name;
		Document d = new Document();
		d.setFileName(name);
		d.setFileOwner(userName);
		d.setFileOwnerId(employee.getEmployeeId());
		d.setFilePath(folderDir);
		d.setFileType(FileTypeEnum.FOLDER.getType());
		// root node
		d.setParentId(0);
		documentService.insertDocument(d);
		FileUtils.createFolder(folderDir);
		JsonResponseUtils.returnJsonResponse(response, "文件夹创建成功", true, 200);
	}

	private boolean isNameDuplicate(String ownerName, String name) {
		int exist = documentService.loadRootFolderCountByUserName(ownerName,
				name);
		if (exist > 0) {
			logger.info(String.format("[%s] duplicate in db !", name));
			return true;
		}
		for (DefaultFolderNameEnum dName : DefaultFolderNameEnum.values()) {
			if (dName.getLabelValue().equals(name)) {
				logger.info(String.format(
						"[%s] duplicate with default names !", name));
				return true;
			}
		}
		return false;
	}

	public enum DefaultFolderNameEnum {
		PROJECT_PLAN(1, "plan", "项目方案"), PROJECT_CONTRACT(2, "contract", "项目合同"), PUBLIST_ARTICALE(
				3, "article", "发表文章"), SAMPLE_INFO(4, "sample", "样本信息"), EXPRIMENT_RESULT(
				5, "result", "实验结果");
		private String labelValue;
		private int value;
		private String chLabelValue;

		DefaultFolderNameEnum(int value, String labelValue, String chLabelValue) {
			this.labelValue = labelValue;
			this.value = value;
			this.chLabelValue = chLabelValue;
		}

		public int getValue() {
			return value;
		}

		public String getLabelValue() {
			return labelValue;
		}

		public String getChLabelValue() {
			return chLabelValue;
		}

	}

	public enum FileTypeEnum {
		FILE(0, "file"), FOLDER(1, "folder");
		private int type;
		private String value;

		FileTypeEnum(int type, String value) {
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
