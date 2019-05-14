package com.zjk.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Hotel_type {
	@Id
	@GeneratedValue
	private int hty_id;
	private String hty_name;
	public int getHty_id() {
		return hty_id;
	}
	public void setHty_id(int hty_id) {
		this.hty_id = hty_id;
	}
	public String getHty_name() {
		return hty_name;
	}
	public void setHty_name(String hty_name) {
		this.hty_name = hty_name;
	}
	

}
