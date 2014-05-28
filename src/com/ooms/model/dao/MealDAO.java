package com.ooms.model.dao;

import com.ooms.model.entity.Meal;

public interface MealDAO {
	
	public void add(Meal m);
	
	public void delete(Meal m);
	
	public void update(Meal m);
	
	public Meal findById(long id);
}
