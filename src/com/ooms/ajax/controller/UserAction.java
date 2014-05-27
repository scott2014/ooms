package com.ooms.ajax.controller;

import com.ooms.model.entity.User;
import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport {

	private User user;
	
	public String register() throws Exception {
		return "register";
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
}
