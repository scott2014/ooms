package com.ooms.struts.controller;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;

import com.ooms.model.entity.Meal;
import com.ooms.model.service.MealService;
import com.opensymphony.xwork2.ActionSupport;

public class MealAction extends ActionSupport {
	
	@Autowired
	@Resource(name="mealService")
	private MealService mealService;
	
	private Meal meal;
	
	public String add() throws Exception {
		this.mealService.add(meal);
		return "add";
	}

	public Meal getMeal() {
		return meal;
	}

	public void setMeal(Meal meal) {
		this.meal = meal;
	}
}
