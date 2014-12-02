package com.tmrasys.service.handler;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.List;
import java.util.Properties;

import javax.annotation.PostConstruct;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.task.TaskExecutor;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;

import com.tmrasys.domain.Customer;
import com.tmrasys.event.StatusMessage;
import com.tmrasys.service.customer.CustomerService;
import com.tmrasys.service.employee.EmployeeService;
import com.tmrasys.utils.FileUtils;

@Component("mailHandler")
public class MailHandler implements Handler {
	Logger logger = Logger.getLogger(getClass());

	private JavaMailSenderImpl mailSender;
	private SimpleMailMessage templateMessage;
	private Properties p;
	@Autowired
	private CustomerService customerService;
	@Autowired
	private EmployeeService employService;

	@Autowired
	private TaskExecutor taskExecutor;

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
	public void handle(final Object obj) {
		taskExecutor.execute(new Runnable() {

			@Override
			public void run() {
				String content = ((StatusMessage) obj).getContent();
				SimpleMailMessage msg = new SimpleMailMessage(templateMessage);
				// String to[] = p.getProperty("mail.to").split(",");
				String to[] = prepareToList(
						((StatusMessage) obj).getProjectId(),
						((StatusMessage) obj).getOperatorId());
				logger.info(String.format("Sending mail to %s,content=%s", to,
						content));
				msg.setTo(to);
				msg.setText(content);
				mailSender.setUsername(p.getProperty("mail.from.username"));
				mailSender.setPassword(p.getProperty("mail.from.passwrod"));
				mailSender.send(msg);
				logger.info("Mail sent success!");
			}

			private String[] prepareToList(int projectId, int operatorId) {
				List<Customer> customers = customerService
						.getByProjectId(projectId);
				List<String> emails = employService
						.getEmployeesEmailByProjectId(projectId, operatorId);
				for (Customer c : customers) {
					String email = c.getEmail();
					if (!StringUtils.isEmpty(email)) {
						emails.add(email);
					}
				}
				return emails.toArray(new String[] {});
			}

		});
	}

}
