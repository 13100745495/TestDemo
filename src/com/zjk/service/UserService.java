package com.zjk.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.zjk.model.User;

public interface UserService {

	public List<User> findUserByName(String username);

	public abstract boolean addlog(HttpServletRequest request);

	public List<User> findalluser();

	/**  
	 * 方法功能说明：  删除用户  
	 * @参数： @param user1      
	 * @return void     
	 */  
	public void deleteuser(User user1);

	public void edituser(User user1);

	public void sign(User user1);

	/**  
	 * 方法功能说明：根据id产看用户信息   
	 * @参数： @param id
	 * @参数： @return      
	 * @return List<User>     
	 */  
	public List<User> finduserbyid(int id);

}
