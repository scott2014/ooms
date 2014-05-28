package com.ooms.model.dao;

import com.ooms.model.entity.Category;

public interface CategoryDAO {
	
	public void add(Category c);
	
	public void delete(Category c);
	
	public void update(Category c);
	
	public Category findById(long id);
}
