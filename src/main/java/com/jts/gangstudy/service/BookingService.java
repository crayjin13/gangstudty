package com.jts.gangstudy.service;

import java.util.List;

import com.jts.gangstudy.domain.Booking;


public interface BookingService {
	
	// ���� ������ ��¥ ���
	public String[][] getAvaliableDates();
	public List<Booking> viewAll();

}
