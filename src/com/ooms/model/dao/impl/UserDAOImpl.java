package com.ooms.model.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.ooms.model.dao.UserDAO;
import com.ooms.model.entity.User;

@Repository("userDAO")
public class UserDAOImpl implements UserDAO {
	
	@Autowired
	@Resource(name="hibernateTemplate")
	private HibernateTemplate hibernateTemplate;

	public void add(User u) {
		this.hibernateTemplate.save(u);
	}

	public void delete(User u) {
		this.hibernateTemplate.delete(u);
	}

	public User findById(long id) {
		String hql = "from User where id = ?";
		List<User> result =  this.hibernateTemplate.find(hql,id);
		
		return result != null && result.size() > 0 ? result.get(0) : null;
	}

	public void update(User u) {
		this.hibernateTemplate.update(u);
	}

}
