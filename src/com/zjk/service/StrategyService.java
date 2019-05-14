package com.zjk.service;

import java.util.List;

import com.zjk.model.Strategy;

public interface StrategyService {

	/**  
	 * 方法功能说明：查看全部   
	 * @参数： @return      
	 * @return List<Strategy>     
	 */  
	public List<Strategy> findallstr();

	/**  
	 * 方法功能说明：分页查看    
	 * @参数： @param pageSize
	 * @参数： @param pageNow   
	 * @return List<Strategy>     
	 */  
	public List<Strategy> findstr(Integer pageSize, Integer pageNow);

	/**  
	 * 方法功能说明：增加攻略   
	 * @参数： @param a      
	 * @return void     
	 */  
	public void addstra(Strategy a);

	public void deletestra(Strategy stra1);
 
	public void editstrate(Strategy a);

	public List<Strategy> findstrabyid(int str_id);

}
