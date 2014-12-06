package com.tmrasys.service.cache;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;

import javax.annotation.PostConstruct;

import org.apache.log4j.Logger;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.google.common.cache.Cache;
import com.google.common.cache.CacheBuilder;

/**暂时不成熟，不要用先
 * @author James
 *
 */
@Component
@Scope
public class GlobalCache {
	Logger logger = Logger.getLogger(getClass());

	Cache<String, Object> globalCache = null;

	@PostConstruct
	public void init() {
		logger.info("Init Global cache ...");
		globalCache = CacheBuilder.newBuilder().maximumSize(100)
				.expireAfterAccess(1, TimeUnit.HOURS).build();
	}

	public Object getKey(String key) throws ExecutionException {
		return globalCache.get(key, new Callable<Object>() {

			@Override
			public Object call() throws Exception {
				logger.info("Missed Cache ......");
				return new NullObject();
			}
		});
	}

	public void putKey(String key, Object value) {
		logger.info("Put Cache ......" + key + "=" + value);
		globalCache.put(key, value);
	}

	public void invalidate(String key) {
		logger.info("Invalidate Cache ......" + key);
		globalCache.invalidate(key);
	}
}
