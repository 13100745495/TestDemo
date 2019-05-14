package com.zjk.daoImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Component;

import com.zjk.dao.BaseDao;
import com.zjk.dao.SpecialtyDao;

import com.zjk.model.Specialty;

@Component("specialtyDao")
public class SpecialtyDaoImpl extends BaseDao implements SpecialtyDao{

	//根据id查看
	public List<Specialty> findspecByst(int st_id) {
		@SuppressWarnings("unchecked")
		List<Specialty> spec=hibernateTemplate.find("from Specialty where st_id='"+st_id+"'");
		return spec;
	}
	//查看所有
	public List<Specialty> findallspec() {
		@SuppressWarnings("unchecked")
		List<Specialty> spec=hibernateTemplate.find("from Specialty ");
		return spec;
	}
	//分类分页查看
	@SuppressWarnings("unchecked")
	public List<Specialty> findspec(Integer pageSize, Integer pageNow,int id) {
		Session session = sessionFactory.openSession();
		
		Query query = session
				.createQuery("from Specialty  where st_id='"+id+"' order by s_sales");
		query.setFirstResult((pageNow - 1) * pageSize);
		query.setMaxResults(pageSize);
		@SuppressWarnings("unchecked")
	
		List<Specialty> spec = query.list();
		 if(spec.size()!=0){
			 Specialty spec1=spec.get(0);
				session.close();
	            return (List<Specialty>) spec1;
	        }else{  
	    		session.close();        
	            return null;
	        }
	}
	
	//增加
	public void addspec(Specialty a) {
		hibernateTemplate.save(a);
		
	}
	//删除
	public void deletespec(Specialty spec1) {
	
		hibernateTemplate.delete(spec1);
	}
	//不分类分页查询
	public List<Specialty> findallspec1(Integer pageSize, Integer pageNow) {
	Session session = sessionFactory.openSession();
		
		Query query = session
				.createQuery("from Specialty   order by s_sales");
		query.setFirstResult((pageNow - 1) * pageSize);
		query.setMaxResults(pageSize);
		@SuppressWarnings("unchecked")
	
		List<Specialty> spec = query.list();
		
		session.close();
		return spec;
	}
	//编辑特产
	public void editspec(Specialty spec1) {
		hibernateTemplate.update(spec1);
		
	}
	/* (non-Javadoc)
	 * @see com.zjk.dao.SpecialtyDao#findspecbyid(int)
	 */
	@Override
	public List<Specialty> findspecbyid(int s_id) {
		@SuppressWarnings("unchecked")
		List<Specialty> spec=hibernateTemplate.find("from Specialty where s_id='"+s_id+"'");
		return spec;
	}

}
