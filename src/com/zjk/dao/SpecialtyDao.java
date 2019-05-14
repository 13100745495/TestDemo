package com.zjk.dao;

import java.util.List;

import com.zjk.model.Specialty;
import com.zjk.model.Strategy;


public interface SpecialtyDao {

	public List<Specialty> findspec(Integer pageSize, Integer pageNow, int id);
 
	public List<Specialty> findspecByst(int st_id);

	public List<Specialty> findallspec();

	public void addspec(Specialty a);

	public void deletespec(Specialty spec1);
 
	public List<Specialty> findallspec1(Integer pageSize, Integer pageNow);
 
	public void editspec(Specialty spec1);
 
	public List<Specialty> findspecbyid(int s_id);

}
