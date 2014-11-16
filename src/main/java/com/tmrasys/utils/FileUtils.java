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
}
