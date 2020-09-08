package com.jts.gangstudy.repository;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;

import com.jts.gangstudy.domain.Admin;
import com.jts.gangstudy.domain.User;

public class AdminDaoImpl implements AdminDao {
	
	@Inject
	SqlSession sqlSession;

	 //�α��� üũ
	@Override
	public boolean loginCheck(Admin admin) throws Exception {
		 String name = sqlSession.selectOne("admin.login_check", admin);
	        
	        //���ǽ� ? true�϶��� �� : false�϶��� ��
	        return (name==null) ? false : true;
	}

	//ȸ�� ����Ż�� ���� �޼ҵ� ����
	@Override
	public void admin_member_forced_evictionCheck(User user) throws Exception {
		sqlSession.delete("admin.admin_member_forced_evictionCheck", user);
		
	}

}
