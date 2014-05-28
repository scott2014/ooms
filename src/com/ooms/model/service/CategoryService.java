package com.ooms.model.service;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ooms.model.dao.CategoryDAO;
import com.ooms.model.entity.Category;

@Service("categoryService")
public class CategoryService {
	
	 @Autowired
	 @Resource(name="categoryDAO")
	 private CategoryDAO categoryDAO;
	
	@Transactional
	public void add(Category c) {
		this.categoryDAO.add(c);
	}
}
