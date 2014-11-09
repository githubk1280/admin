package com.tmrasys.utils;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import org.apache.log4j.Logger;

public class FailedUtils {
	private static Logger logger = Logger.getLogger(FailedUtils.class);

	public static String getLoginErrorMessage(String str) {
		try {
			return "?reason=" + URLEncoder.encode(str, "utf-8");
		} catch (UnsupportedEncodingException e) {
			logger.info("UnsupportedEncodingException " + e.getMessage());
			return "";
		}
	}
}
