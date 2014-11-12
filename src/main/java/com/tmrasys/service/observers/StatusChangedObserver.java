package com.tmrasys.service.observers;

import java.util.Observable;
import java.util.Observer;

import org.springframework.stereotype.Component;

@Component("messageObserver")
public class StatusChangedObserver implements Observer {

	@Override
	public void update(Observable o, Object arg) {

	}

}
