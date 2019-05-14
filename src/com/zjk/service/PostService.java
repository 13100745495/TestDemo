package com.zjk.service;

import java.util.List;

import com.zjk.model.Commnent;
import com.zjk.model.Posts;

public interface PostService {

	public List<Posts> findallpost();

	public List<Posts> findpByid(int p_id);

	/**  
	 * 方法功能说明： 查看全部游记 
	 * @参数： @param parseInt
	 * @参数： @return      
	 * @return List<Commnent>     
	 *//*  
	public List<Commnent> findcomByid(int p_id);
*/
	/**  
	 * 方法功能说明：查看全部评论  
	 * @参数： @return      
	 * @return List<Commnent>     
	 */  
	public List<Commnent> findallcom();

	/**  
	 * 方法功能说明：分页查看  
	 * @参数： @param pageSize
	 * @参数： @param pageNow
	 * @参数： @return      
	 * @return List<Posts>     
	 */  
	public List<Posts> viewpost(Integer pageSize, Integer pageNow);

}
