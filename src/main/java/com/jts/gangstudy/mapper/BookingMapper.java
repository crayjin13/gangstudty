package com.jts.gangstudy.mapper;

import java.util.HashMap;
import java.util.List;

import com.jts.gangstudy.domain.Booking;

public interface BookingMapper {
	public void insertBook(Booking book);
	public void deleteBook(int book_no);
	public void updateState(HashMap<String, String> map);
	
	public List<Booking> selectByDate(String date);
	public List<Booking> selectByDateTime(String dateTime);
	public List<Booking> selectByDateTimeFirst(String dateTime);
	public List<Booking> selectByState(String state);
	public List<Booking> selectByUserState(HashMap<String, String> map);
	public Booking selectByBookNo(int book_no);
	
	public int selectDuplicate(HashMap<String, String> map);
	public List<Booking> selectOvernightWithoutBookno(HashMap<String, String> map);
}
