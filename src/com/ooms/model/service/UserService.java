package com.ooms.model.service;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ooms.model.dao.UserDAO;
import com.ooms.model.entity.User;

@Service("userService")
public class UserService {

	@Autowired
	@Resource(name="userDAO")
	private UserDAO userDAO;
	
	@Transactional
	public void add(User u) {
		this.userDAO.add(u);
	} 
}
