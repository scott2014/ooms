package com.ooms.model.entity;

import java.sql.Timestamp;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Order entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "order", schema = "dbo", catalog = "ooms")
public class Order implements java.io.Serializable {

	// Fields

	private Long id;
	private Long clientId;
	private Long mealId;
	private Timestamp orderTime;

	// Constructors

	/** default constructor */
	public Order() {
	}

	/** full constructor */
	public Order(Long clientId, Long mealId, Timestamp orderTime) {
		this.clientId = clientId;
		this.mealId = mealId;
		this.orderTime = orderTime;
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

	@Column(name = "clientId")
	public Long getClientId() {
		return this.clientId;
	}

	public void setClientId(Long clientId) {
		this.clientId = clientId;
	}

	@Column(name = "mealId")
	public Long getMealId() {
		return this.mealId;
	}

	public void setMealId(Long mealId) {
		this.mealId = mealId;
	}

	@Column(name = "orderTime", length = 23)
	public Timestamp getOrderTime() {
		return this.orderTime;
	}

	public void setOrderTime(Timestamp orderTime) {
		this.orderTime = orderTime;
	}

}