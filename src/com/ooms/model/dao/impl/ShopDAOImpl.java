package com.ooms.model.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.ooms.model.dao.ShopDAO;
import com.ooms.model.entity.Shop;


@Repository("shopDAO")
public class ShopDAOImpl implements ShopDAO {
	
	@Autowired
	@Resource(name="hibernateTemplate")
	private HibernateTemplate hibernateTemplate;

	public void add(Shop s) {
		this.hibernateTemplate.save(s);
	}

	public void delete(Shop s) {
		this.hibernateTemplate.delete(s);
	}

	public Shop findById(long id) {
		String hql = "from Shop where id = ?";
		
		List<Shop> shops = this.hibernateTemplate.find(hql,id);
		return shops != null && shops.size() > 0 ? shops.get(0) : null;
	}

	public void update(Shop s) {
		this.hibernateTemplate.update(s);
	}

}
