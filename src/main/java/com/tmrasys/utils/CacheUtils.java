package com.tmrasys.utils;

import com.tmrasys.service.cache.NullObject;

public class CacheUtils {
//	private static Logger logger = Logger.getLogger(CacheUtils.class);

	public static boolean isEmpty(Object cacheResult) {
		return (cacheResult == null || (cacheResult instanceof NullObject)) ? true
				: false;
	}
}
