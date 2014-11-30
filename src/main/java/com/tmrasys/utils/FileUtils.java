package com.tmrasys.utils;

import java.io.File;
import java.io.InputStream;

public class FileUtils {
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

	final static String winRootDir = "D:" + File.separator + "admin"
			+ File.separator + "upload" + File.separator;
	final static String linuxRootDir = File.separator + "admin"
			+ File.separator + "upload" + File.separator;

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
	
	public static void createUserFolder(String userName){
		String path = getRootPath() + userName;
		createFolder(path);
	}
	
	public static void createFolder(String path){
		File f = new File (path);
		if(!f.exists())
			f.mkdir();
	}
}
