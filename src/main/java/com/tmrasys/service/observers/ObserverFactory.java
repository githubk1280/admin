package com.tmrasys.service.observers;

import java.util.List;
import java.util.Observer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

import com.google.common.collect.Lists;

@Component
public class ObserverFactory {
	@Autowired
	@Qualifier("messageObserver")
	private Observer messageObserver;

	public Observer get(String name) throws TmrasysException {
		if ("messageObserver".equals(name)) {
			return messageObserver;
		}

		throw new TmrasysException("No observer found for name=" + name);
	}
	
	public List<Observer> getObserversForProjectStatus(){
		List<Observer> obs = Lists.newArrayList();
		obs.add(messageObserver);
		return obs;
	}
	
}
