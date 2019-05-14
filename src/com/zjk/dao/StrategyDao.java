package com.zjk.dao;

import java.util.List;

import com.zjk.model.Strategy;

public interface StrategyDao {
 
	public abstract List<Strategy> findallstr();
 
	public abstract List<Strategy> findstr(Integer pageSize, Integer pageNow);
 
	public abstract void addstra(Strategy a);

	public  void deletastra(Strategy stra1);

	public abstract void deitstrate(Strategy a);
 
	public abstract List<Strategy> findstrabyid(int str_id);

}
