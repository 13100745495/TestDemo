package com.zjk.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Traffic_type {
	@Id
	@GeneratedValue
	private int traty_id;
	private String traty_name;
	public int getTraty_id() {
		return traty_id;
	}
	public void setTraty_id(int traty_id) {
		this.traty_id = traty_id;
	}
	public String getTraty_name() {
		return traty_name;
	}
	public void setTraty_name(String traty_name) {
		this.traty_name = traty_name;
	}
	
	

}
