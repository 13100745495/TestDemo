package com.zjk.serviceImpl;

import java.util.List;

import org.springframework.stereotype.Component;

import com.zjk.model.Commnent;
import com.zjk.model.Posts;
import com.zjk.service.BaseService;
import com.zjk.service.PostService;

@Component("postService")
public class PostServiceImpl extends BaseService implements PostService{


	public List<Posts> findallpost() {
		// TODO Auto-generated method stub
		return this.postDao.findallpost();
	}

	
	public List<Posts> findpByid(int p_id) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Commnent> findallcom() {
		// TODO Auto-generated method stub
		return this.postDao.findallcom();
	}

	public List<Posts> viewpost(Integer pageSize, Integer pageNow) {
		// TODO Auto-generated method stub
		return this.postDao.viewpost(pageSize,pageNow);
	}

}
