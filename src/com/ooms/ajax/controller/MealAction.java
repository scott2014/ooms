package com.ooms.ajax.controller;

import javax.annotation.Resource;

import org.apache.struts2.json.annotations.JSON;
import org.springframework.beans.factory.annotation.Autowired;

import com.ooms.model.entity.Meal;
import com.ooms.model.service.MealService;
import com.opensymphony.xwork2.ActionSupport;

public class MealAction extends ActionSupport {

	@Autowired
	@Resource(name="mealService")
	private MealService mealService;
	
	private Meal meal;
	
	private String errorCode;
	
	public String add() throws Exception {
		this.mealService.add(meal);
		return "add";
	}

	@JSON(serialize=false)
	public Meal getMeal() {
		return meal;
	}

	public void setMeal(Meal meal) {
		this.meal = meal;
	}

	public String getErrorCode() {
		return errorCode;
	}

	public void setErrorCode(String errorCode) {
		this.errorCode = errorCode;
	}
}
