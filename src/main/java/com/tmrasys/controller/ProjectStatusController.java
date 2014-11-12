package com.tmrasys.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Observable;
import java.util.Observer;

import javax.annotation.PostConstruct;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tmrasys.service.employee.EmployeeService;
import com.tmrasys.service.observers.ObserverFactory;

@Controller
@RequestMapping("/status")
public class ProjectStatusController extends Observable {
	Logger logger = Logger.getLogger(getClass());
	List<Observer> observers = new ArrayList<Observer>();

	@Autowired
	private EmployeeService employeeService;

	@Autowired
	private ObserverFactory observerFactory;

	@PostConstruct
	public void init() {
		observers.addAll(observerFactory.getObserversForProjectStatus());
	}

	@RequestMapping("/add")
	public void add() {
		// insert

		//
		this.setChanged();
		// this.notifyObservers(arg); userId,projectId,percentage,content
	}

}
