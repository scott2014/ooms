package com.ooms.model.dao;

import com.ooms.model.entity.Shop;

public interface ShopDAO {
	
	public void add(Shop s);
	
	public void delete(Shop s);
	
	public void update(Shop s);
	
	public Shop findById(long id);
}
