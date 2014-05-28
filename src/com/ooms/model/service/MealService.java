package com.ooms.model.service;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ooms.model.dao.MealDAO;
import com.ooms.model.entity.Meal;

@Service("mealService")
public class MealService {
	
	
	@Autowired
	@Resource(name="mealDAO")
	private MealDAO mealDAO;
	
	@Transactional
	public void add(Meal m) {
		this.mealDAO.add(m);
	}
	
	@Transactional
	public void delete(Meal m) {
		this.mealDAO.delete(m);
	}
	
	@Transactional
	public void update(Meal m) {
		this.mealDAO.update(m);
	}
	
	public Meal findById(long id) {
		return this.mealDAO.findById(id);
	}
}
