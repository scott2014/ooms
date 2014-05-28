package com.ooms.model.service;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ooms.model.dao.ShopDAO;
import com.ooms.model.entity.Shop;

@Service("shopService")
public class ShopService {
	
	@Autowired
	@Resource(name="shopDAO")
	private ShopDAO shopDAO;
	
	@Transactional
	public void add(Shop s) {
		this.shopDAO.add(s);
	}
}
