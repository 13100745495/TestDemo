package com.zjk.service;
import java.util.List;
import com.zjk.model.Attractions;


public interface AttractionService {

	/**  
	 * 
	 * 方法功能说明：分页查看景点信息  
	 * @参数： @param pageSize
	 * @参数： @param pageNow
	 * @参数： @return      
	 * @return List<Attractions>
	 */
	public abstract List<Attractions> getAtts(Integer pageSize, Integer pageNow);

	/**  
	 * 
	 * 方法功能说明：查看景点数量   
	 * @参数： @return      
	 * @return List<Attractions>
	 */
	public abstract List<Attractions> findAllatts();

	public  void addAtt(Attractions a);

	public  abstract void deleteatt(Attractions att);

	public abstract List<Attractions> findaByid(int id);

	public abstract List<Attractions> findallatt();

	public abstract void editatt(Attractions a);

}
