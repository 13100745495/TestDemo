package com.zjk.dao;

import java.util.List;

import com.zjk.model.Commnent;
import com.zjk.model.Posts;

public interface PostDao {

	public List<Posts> findallpost();
 
	public List<Commnent> findallcom();

	public List<Posts> viewpost(Integer pageSize, Integer pageNow);

}
