package com.tmrasys.utils;

import java.io.File;
import java.io.InputStream;

import org.apache.log4j.Logger;

public class FileUtils {
	private static Logger logger = Logger.getLogger(FileUtils.class);

	final static String winRootDir = "D:" + File.separator + "admin"
			+ File.separator + "upload" + File.separator;
	final static String linuxRootDir = File.separator + "admin"
			+ File.separator + "upload" + File.separator;

	final static String winLiteratureDir = "D:" + File.separator + "admin"
			+ File.separator + "literature" + File.separator;
	final static String linuxLiteratureDir = File.separator + "admin"
			+ File.separator + "literature" + File.separator;

	public static String getFilePath(ClassLoader cl, String name) {
		String path = cl.getResource(
				File.separator + "pros" + File.separator + name).toString();
		System.out.println(path);
		return path;

	}

	public static InputStream getFileAsInputStream(ClassLoader cl, String name) {
		return cl.getResourceAsStream(File.separator + "pros" + File.separator
				+ name);

	}

	public static String getRootPath() {
		if (isWindows()) {
			return winRootDir;
		}
		return linuxRootDir;
	}

	public static boolean isWindows() {
		String system = System.getProperty("os.name");
		if (system.toLowerCase().indexOf("win") != -1) {
			return true;
		}
		return false;
	}

	public static void createUserFolder(String userName) {
		String path = getRootPath() + userName;
		createFolder(path);
	}

	public static void createFolder(String path) {
		File f = new File(path);
		if (!f.exists()) {
			boolean success = f.mkdirs();
			logger.info("Create files and folders success ? " + success);
		}
	}

	public static void createLiteratureFolder() {
		File f = new File(isWindows() ? winLiteratureDir : linuxLiteratureDir);
		if (!f.exists()) {
			boolean success = f.mkdirs();
			logger.info("Create literature folder success ? " + success);
		}
	}

	public static String getLiteraturePath() {
		return isWindows() ? winLiteratureDir : linuxLiteratureDir;
	}
}
