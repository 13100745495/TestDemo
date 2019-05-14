package com.zjk.dao;

import java.util.List;

import com.zjk.model.User;

public interface UserDao {

	public List<User> login(String username);
 
	public List<User> findalluser();

	public void deleteuser(User user1);

	public void edituser(User user1);

	public void sign(User user1);
 
	public List<User> finduserbyid(int id);

}
