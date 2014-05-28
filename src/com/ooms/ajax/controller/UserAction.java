package com.ooms.ajax.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;

import com.ooms.model.entity.User;
import com.ooms.model.service.UserService;
import com.ooms.model.util.MDEncode;
import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport {
	
	@Autowired
	@Resource(name="userService")
	private UserService userService;

	private User user;
	
	private String loginStr;
	private String password;
	
	private String errorCode;
	
	public String register() throws Exception {
		
		return "register";
	}
	
	public String login() throws Exception {
		
		User u = this.userService.login(loginStr);
		
		if (u != null) {
			
			if (u.getPassword().equals(MDEncode.encode(password))) {
				HttpSession session = ServletActionContext.getRequest().getSession();
				session.setAttribute("user", u);
			} else {
				this.errorCode = "用户密码错误";
			}
		} else {
			errorCode = "该用户不存在";
		}
		
		return "login";
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getLoginStr() {
		return loginStr;
	}

	public void setLoginStr(String loginStr) {
		this.loginStr = loginStr;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getErrorCode() {
		return errorCode;
	}

	public void setErrorCode(String errorCode) {
		this.errorCode = errorCode;
	}
	
}
