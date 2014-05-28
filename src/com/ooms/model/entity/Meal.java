package com.ooms.model.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Meal entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "meal", schema = "dbo", catalog = "ooms")
public class Meal implements java.io.Serializable {

	// Fields

	private Long id;
	private Long shopId;
	private Double price;
	private Double roomCosts;
	private String name;
	private String description;
	private String photo;
	

	// Constructors

	/** default constructor */
	public Meal() {
	}

	/** full constructor */
	public Meal(Long shopId, Double price, Double roomCosts, String name,
			String description,String photo) {
		this.shopId = shopId;
		this.price = price;
		this.roomCosts = roomCosts;
		this.name = name;
		this.description = description;
		this.photo = photo;
	}

	// Property accessors
	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "id", unique = true, nullable = false)
	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	@Column(name = "shopId")
	public Long getShopId() {
		return this.shopId;
	}

	public void setShopId(Long shopId) {
		this.shopId = shopId;
	}

	@Column(name = "price", precision = 53, scale = 0)
	public Double getPrice() {
		return this.price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	@Column(name = "roomCosts", precision = 53, scale = 0)
	public Double getRoomCosts() {
		return this.roomCosts;
	}

	public void setRoomCosts(Double roomCosts) {
		this.roomCosts = roomCosts;
	}

	@Column(name = "name", length = 100)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "description")
	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Column(name="photo",length=255)
	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

}