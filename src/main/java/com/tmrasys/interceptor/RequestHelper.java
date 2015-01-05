package com.tmrasys.interceptor;

import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.tmrasys.service.privilege.PrivilegeServcie;

@Component
public class RequestHelper {

	@Autowired
	private PrivilegeServcie privilegeServcie;

	public String getModule(HttpServletRequest request) {
		String path = request.getRequestURI();
		// /admin
		path = path.substring(7);
		return path.substring(0,
				path.indexOf("/") == -1 ? path.length() : path.indexOf("/"));
	}

	public String getPrivileges(int employeeId) {
		return privilegeServcie.getPrivilegeByUserId(employeeId);
	}

	public boolean hasPrivilege(HttpServletRequest request, int employeeId) {
		String module = this.getModule(request);
		String privilegeStr = this.getPrivileges(employeeId);
		if ("all".equals(privilegeStr) || "login".equals(module)
				|| "logout".equals(module) || "message".equals(module)) {
			return true;
		} else {
			String privileges[] = privilegeStr.split(",");
			List<String> ps = Arrays.asList(privileges);
			return ps.contains(module);
		}
	}

	public static void main(String args[]) {
		System.out.println("login".substring(0, 5));
	}
}
