package com.zjk.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Commnent {
	@Id
	@GeneratedValue
	public int com_id;
	public String com_info;
	public String comt_time;
	public String com_member;
	public int p_id;
	public int getCom_id() {
		return com_id;
	}
	public void setCom_id(int com_id) {
		this.com_id = com_id;
	}
	public String getCom_info() {
		return com_info;
	}
	public void setCom_info(String com_info) {
		this.com_info = com_info;
	}
	public String getComt_time() {
		return comt_time;
	}
	public void setComt_time(String comt_time) {
		this.comt_time = comt_time;
	}
	public String getCom_member() {
		return com_member;
	}
	public void setCom_member(String com_member) {
		this.com_member = com_member;
	}
	public int getP_id() {
		return p_id;
	}
	public void setP_id(int p_id) {
		this.p_id = p_id;
	}
	

}
