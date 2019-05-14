package com.zjk.dao;

import java.util.List;

import com.zjk.model.Hotel;
import com.zjk.model.Hotel_type;
import com.zjk.model.Traffic;


public interface HotelDao {
 
	public List<Hotel> gethotels(Integer pageSize, Integer pageNow, int id);

	public List<Hotel> findallhotel();
 
	public List<Hotel> findhBytype(int id);

	public List<Traffic> findtra(Integer pageSize, Integer pageNow);

	public List<Traffic> findAlltra();
 
	public List<Hotel> viewHbyid(int id);

	public void addhotel(Hotel a);

	public void deletehotel(Hotel h1);
 
	public List<Hotel_type> gethoty(int id);

	public void edithotel(Hotel h1);
 
	public List<Hotel> findhotelbyid(int id);

}
