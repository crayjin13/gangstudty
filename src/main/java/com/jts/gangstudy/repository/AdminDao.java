package com.jts.gangstudy.repository;

import com.jts.gangstudy.domain.Admin;
import com.jts.gangstudy.domain.User;

public interface AdminDao {
	
	boolean loginCheck(Admin admin) throws Exception;    //�α����� üũ�ϴ� �޼ҵ�
	 
	 
    void admin_member_forced_evictionCheck(User user) throws Exception;    //ȸ�� ����Ż�� ���� �޼ҵ�
	
}
