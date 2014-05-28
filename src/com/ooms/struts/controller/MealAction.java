package com.ooms.struts.controller;

import java.io.File;

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
	
	private String shopName;
	private String categoryName;
	
	private File photo;
	private String photoFileName;
	private String photoContentType;
	
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

	public String getShopName() {
		return shopName;
	}

	public void setShopName(String shopName) {
		this.shopName = shopName;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public File getPhoto() {
		return photo;
	}

	public void setPhoto(File photo) {
		this.photo = photo;
	}

	public String getPhotoFileName() {
		return photoFileName;
	}

	public void setPhotoFileName(String photoFileName) {
		this.photoFileName = photoFileName;
	}

	public String getPhotoContentType() {
		return photoContentType;
	}

	public void setPhotoContentType(String photoContentType) {
		this.photoContentType = photoContentType;
	}
}
