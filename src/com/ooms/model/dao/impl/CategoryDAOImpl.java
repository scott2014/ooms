package com.ooms.model.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.ooms.model.dao.CategoryDAO;
import com.ooms.model.entity.Category;

@Repository("categoryDAO")
public class CategoryDAOImpl implements CategoryDAO {
	
	@Autowired
	@Resource(name="hibernateTemplate")
	private HibernateTemplate hibernateTemplate;

	public void add(Category c) {
		this.hibernateTemplate.save(c);
	}

	public void delete(Category c) {
		this.hibernateTemplate.delete(c);
	}

	public Category findById(long id) {
		String hql = "from Category where id = ?";
		
		List<Category> result = this.hibernateTemplate.find(hql,id);
		
		return result != null && result.size() > 0 ? result.get(0) : null; 
	}

	public void update(Category c) {
		this.hibernateTemplate.update(c);
	}

}
