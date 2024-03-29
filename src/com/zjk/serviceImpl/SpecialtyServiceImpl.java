package com.zjk.serviceImpl;

import java.util.List;
import org.springframework.stereotype.Component;
import com.zjk.model.Specialty;
import com.zjk.service.BaseService;
import com.zjk.service.SpecialtyService;

@Component("specialtyService")
public class SpecialtyServiceImpl extends BaseService implements SpecialtyService{

	public List<Specialty> findspecByst(int st_id) {
	
		return this.specialtyDao.findspecByst(st_id);
	}

	
	public List<Specialty> findspec(Integer pageSize, Integer pageNow,int id) {
		// TODO Auto-generated method stub
		return this.specialtyDao.findspec(pageSize,pageNow,id);
	}

	/**
	 * 查看全部特产
	 */
	public List<Specialty> findallspec() {
		// TODO Auto-generated method stub
		return this.specialtyDao.findallspec();
	}



	public void addspec(Specialty a) {
		this.specialtyDao.addspec(a);
	}


	
	public void deletespec(Specialty spec1) {
		// TODO Auto-generated method stub
		this.specialtyDao.deletespec(spec1);
	}



	public List<Specialty> findspec1(Integer pageSize, Integer pageNow) {
		// TODO Auto-generated method stub
		return this.specialtyDao.findallspec1(pageSize,pageNow);
	}

	@Override
	public void editspec(Specialty spec1) {
		// TODO Auto-generated method stub
		this.specialtyDao.editspec(spec1);
	}

	@Override
	public List<Specialty> findspecbyid(int s_id) {
		// TODO Auto-generated method stub
		return this.specialtyDao.findspecbyid(s_id);
	}

}
