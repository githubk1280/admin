package com.tmrasys.service.handler;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;

import javax.annotation.PostConstruct;

import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.stereotype.Component;

import com.tmrasys.event.StatusMessage;
import com.tmrasys.utils.FileUtils;

@Component("mailHandler")
public class MailHandler implements Handler {

	private JavaMailSenderImpl mailSender;
	private SimpleMailMessage templateMessage;
	private Properties p;

	@PostConstruct
	public void init() throws FileNotFoundException, IOException {
		p = new Properties();
		p.load(FileUtils.getFileAsInputStream(this.getClass().getClassLoader(),
				"mail.properties"));
		mailSender = new JavaMailSenderImpl();
		mailSender.setJavaMailProperties(p);
		templateMessage = new SimpleMailMessage();
		templateMessage.setFrom(p.getProperty("mail.from"));
		templateMessage.setSubject(p.getProperty("mail.subject"));
	}

	@Override
	public void handle(Object obj) {
		SimpleMailMessage msg = new SimpleMailMessage(this.templateMessage);
		String to[] = p.getProperty("mail.to").split(",");
		msg.setTo(to);
		msg.setText(((StatusMessage) obj).getContent());
		mailSender.setUsername(p.getProperty("mail.from.username"));
		mailSender.setPassword(p.getProperty("mail.from.passwrod"));
		mailSender.send(msg);
	}

}
