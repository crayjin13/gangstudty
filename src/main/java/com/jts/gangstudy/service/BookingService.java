package com.jts.gangstudy.service;

import java.util.List;

import com.jts.gangstudy.domain.Booking;


public interface BookingService {
	
	// ���� ������ ��¥ ���
	public void getAvaliableDates();
	public List<Booking> viewAll();

}
