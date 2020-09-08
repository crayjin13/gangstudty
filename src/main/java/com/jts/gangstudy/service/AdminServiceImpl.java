package com.jts.gangstudy.service;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import com.jts.gangstudy.domain.Admin;
import com.jts.gangstudy.domain.User;
import com.jts.gangstudy.repository.AdminDao;

public class AdminServiceImpl implements AdminService {

	@Inject
	AdminDao admindao;

	@Override // �α��� üũ ���� �޼ҵ� (���ǿ� ���̵�� ��й�ȣ�� ������)
	public boolean loginCheck(Admin admin, HttpSession session) throws Exception {
		boolean result = admindao.loginCheck(admin);

		if (result) { // �α��� ����

			session.setAttribute("admin_id", admin.getAdmin_id());
			session.setAttribute("admin_pw", admin.getAdmin_pw());

		}

		return result;
	}

	@Override
	public void admin_member_forced_evictionCheck(User user) throws Exception {
		// TODO Auto-generated method stub

	}

}
