package com.ooms.struts.controller;

import java.io.File;

import javax.annotation.Resource;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;

import com.ooms.model.entity.Category;
import com.ooms.model.entity.Meal;
import com.ooms.model.entity.Shop;
import com.ooms.model.service.CategoryService;
import com.ooms.model.service.MealService;
import com.ooms.model.service.ShopService;
import com.opensymphony.xwork2.ActionSupport;

public class MealAction extends ActionSupport {
	
	@Autowired
	@Resource(name="mealService")
	private MealService mealService;
	
	@Autowired
	@Resource(name="categoryService")
	private CategoryService categoryService;
	
	@Autowired
	@Resource(name="shopService")
	private ShopService shopService;
	
	private Meal meal;
	
	private String shopName;
	private String categoryName;
	
	private File photo;
	private String photoFileName;
	private String photoContentType;
	
	public String add() throws Exception {
		
		if (photo != null) {
			String path = ServletActionContext.getRequest().getRealPath("/upload");
			
			String[] arr = this.photoFileName.split("[.]");
			String suffix = "";
			if (arr != null && arr.length > 1 ) {
				suffix = arr[1];
			}
			
			String newFileName = System.currentTimeMillis() + "." + suffix;
			
			FileUtils.copyFile(photo, new File(path + "/" + newFileName));
			
			meal.setPhoto("/upload/" + newFileName);
		}
		
		if (shopName != null && !shopName.trim().equals("")) {
			Shop s = new Shop();
			s.setName(shopName);
			this.shopService.add(s);
			
			meal.setShopId(s.getId());
		}
		
		if (categoryName != null && !categoryName.trim().equals("")) {
			Category c = new Category();
			c.setName(categoryName);
			this.categoryService.add(c);
			
			meal.setCategoryId(c.getId());
		}
		
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
