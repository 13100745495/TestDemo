package com.zjk.dao;

import java.util.List;
import com.zjk.model.Attractions;


public interface AttractionDao  {

	/**  
	 * 
	 * 方法功能说明： 分页查看景点信息 
	 * @参数： @return      
	 * @param pageNow 
	 * @param pageSize 
	 * @return List<Attractions>
	 */
	public abstract List<Attractions> getAtts(Integer pageSize, Integer pageNow);

	/**  
	 * 
	 * 方法功能说明：查看景点数量    
	 * @参数： @return      
	 * @return List<Attractions>
	 */
	public abstract List<Attractions> findallatts();

	/**  
	 * 
	 * 方法功能说明：  
	 * @参数：       
	 * @param a 
	 * @return void
	 */
	public abstract void addatt(Attractions a);

	/**  
	 * 
	 * 方法功能说明： 删除景点  
	 * @参数： @param id      
	 * @return void
	 */
	public abstract void deleteatt(Attractions att);

	
	public abstract List<Attractions> findabyid(int id);

	/**  
	 * 方法功能说明：   
	 * @参数： @param a      
	 * @return void     
	 */  
	public abstract void editatt(Attractions a);

}
