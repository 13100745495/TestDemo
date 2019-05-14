package com.zjk.service;

import java.util.List;
import com.zjk.model.Specialty;

public interface SpecialtyService {

	/**   
	 * 方法功能说明：分页 查看特产  
	 * @参数： @return      
	 * @param pageNow 
	 * @param pageSize 
	 * @param id 
	 * @param st_id 
	 * @return List<Specialty>
	 */
	public List<Specialty> findspec(Integer pageSize, Integer pageNow, int id);


	/**  
	 * 方法功能说明： 根据类型id查看特产  
	 * @参数： @param id
	 * @参数： @return      
	 * @return List<Specialty>     
	 */
	public List<Specialty> findspecByst(int st_id);


	/**  
	 * 方法功能说明：查看所有    
	 * @参数： @return      
	 * @return Map<String,Object>     
	 */  
	public List<Specialty> findallspec();

	/**  
	 * 方法功能说明：增加   
	 * @参数： @param a      
	 * @return void     
	 */  
	public void addspec(Specialty a);

	public void deletespec(Specialty spec1);

	public List<Specialty> findspec1(Integer pageSize, Integer pageNow);

	public void editspec(Specialty spec1);

	public List<Specialty> findspecbyid(int s_id);


}
