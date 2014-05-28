package com.ooms.model.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.ooms.model.dao.MealDAO;
import com.ooms.model.entity.Meal;

@Repository("mealDAO")
public class MealDAOImpl implements MealDAO {
	
	@Autowired
	@Resource(name="hibernateTemplate")
	private HibernateTemplate hibernateTemplate;

	public void add(Meal m) {
		this.hibernateTemplate.save(m);
	}

	public void delete(Meal m) {
		this.hibernateTemplate.delete(m);
	}

	public Meal findById(long id) {
		String hql = "from Meal where id = ?";
		
		List<Meal> result = this.hibernateTemplate.find(hql,id);
		return result != null && result.size() > 0 ? result.get(0) : null;
	}

	public void update(Meal m) {
		this.hibernateTemplate.update(m);
	}

}
