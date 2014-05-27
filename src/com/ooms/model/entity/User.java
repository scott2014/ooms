package com.ooms.model.entity;

import java.sql.Timestamp;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * User entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "user", schema = "dbo", catalog = "ooms")
public class User implements java.io.Serializable {

	// Fields

	private Long id;
	private String username;
	private String password;
	private String email;
	private Timestamp registerTime;
	private Integer rightCode;
	private String rightName;

	// Constructors

	/** default constructor */
	public User() {
	}

	/** full constructor */
	public User(String username, String password, String email,
			Timestamp registerTime, Integer rightCode, String rightName) {
		this.username = username;
		this.password = password;
		this.email = email;
		this.registerTime = registerTime;
		this.rightCode = rightCode;
		this.rightName = rightName;
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

	@Column(name = "username", length = 100)
	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	@Column(name = "password", length = 32)
	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Column(name = "email")
	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Column(name = "registerTime", length = 23)
	public Timestamp getRegisterTime() {
		return this.registerTime;
	}

	public void setRegisterTime(Timestamp registerTime) {
		this.registerTime = registerTime;
	}

	@Column(name = "rightCode")
	public Integer getRightCode() {
		return this.rightCode;
	}

	public void setRightCode(Integer rightCode) {
		this.rightCode = rightCode;
	}

	@Column(name = "rightName", length = 16)
	public String getRightName() {
		return this.rightName;
	}

	public void setRightName(String rightName) {
		this.rightName = rightName;
	}

}