package com.zjk.serviceImpl;

import java.util.List;

import org.springframework.stereotype.Component;

import com.zjk.model.Strategy;
import com.zjk.service.BaseService;
import com.zjk.service.StrategyService;

@Component("strategyService")
public class StrategyServiceImpl extends BaseService implements StrategyService{


	public List<Strategy> findallstr() {
		// TODO Auto-generated method stub
		return this.strategyDao.findallstr();
	}


	public List<Strategy> findstr(Integer pageSize, Integer pageNow) {
		
		return this.strategyDao.findstr(pageSize,pageNow);
	}


	//添加攻略
	public void addstra(Strategy a) {
		this.strategyDao.addstra(a);
		
	}

	//删除攻略
	public void deletestra(Strategy stra1) {
		this.strategyDao.deletastra(stra1);
	}

	//修改攻略
	public void editstrate(Strategy a) {
		// TODO Auto-generated method stub
		this.strategyDao.deitstrate(a);
	}

	@Override
	public List<Strategy> findstrabyid(int str_id) {
		// TODO Auto-generated method stub
		return this.strategyDao.findstrabyid(str_id);
	}

}
