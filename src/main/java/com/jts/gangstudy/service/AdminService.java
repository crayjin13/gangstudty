package com.jts.gangstudy.service;

import javax.servlet.http.HttpSession;

import com.jts.gangstudy.domain.Admin;
import com.jts.gangstudy.domain.User;

public interface AdminService {
	
	 boolean loginCheck(Admin admin, HttpSession session) throws Exception;    //������ �α����� üũ�ϴ� �޼ҵ�
	 
	    
	    void admin_member_forced_evictionCheck(User user) throws Exception; //����Ż�� ��ų�� �ش� ȸ���� �ִ��� üũ�ϴ� �޼ҵ�
}
