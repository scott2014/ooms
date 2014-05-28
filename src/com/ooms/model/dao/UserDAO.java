package com.ooms.model.dao;

import com.ooms.model.entity.User;

public interface UserDAO {
	
	public void add(User u);
	
	public void delete(User u);
	
	public void update(User u);
	
	public User findById(long id);
	
	public User login(String username,String email);
}
