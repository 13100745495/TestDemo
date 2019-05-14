package com.zjk.service;
import java.util.List;
import com.zjk.model.Hotel;
import com.zjk.model.Hotel_type;
import com.zjk.model.Traffic;

public interface HotelService {

	/**  
	 * 方法功能说明：分页查看宾馆    
	 * @参数： @param pageSize
	 * @参数： @param pageNow
	 * @参数： @return      
	 * @param id 
	 * @return List<Hotel>     
	 */  
	public List<Hotel> getHotels(Integer pageSize, Integer pageNow, int id);

	/**  
	 * 方法功能说明：查找所有宾馆  
	 * @参数： @return      
	 * @return Map<String,Object>     
	 */  
	public  List<Hotel> findAllhotel();

	public List<Hotel> findhBytype(int id);

	public List<Traffic> findtra(Integer pageSize, Integer pageNow);

	public List<Traffic> findAlltra();

	public List<Hotel> viewHbyid(int id);

	public void addhotel(Hotel a);

	public void deletehotel(Hotel h1);

	/**  
	 * 方法功能说明：查询   
	 * @参数： @param id
	 * @参数： @return      
	 * @return List<Hotel_type>     
	 */  
	public List<Hotel_type> gethoty(int id);

	public void edithotel(Hotel h1);

	public List<Hotel> findhotelByid(int id);

}
