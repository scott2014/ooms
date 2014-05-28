package com.ooms.struts.controller;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;

import com.ooms.model.entity.User;
import com.ooms.model.service.UserService;
import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport {
	
	@Autowired
	@Resource(name="userService")
	private UserService userService;
	
	private User user;
	
	
	public String register() throws Exception {
		this.userService.add(user);
		return "register";
	}
	
	public String login() throws Exception {
		return "login";
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	
}
