package com.jts.gangstudy.service;

import java.util.List;

import com.jts.gangstudy.domain.User;

public interface UserService {

	
	User signIn(String id, String pw) throws Exception;

	// ȸ�� ���� Create
	boolean newUser(User user);
	
	// ȸ�� ����
	User userInfo(Integer user_no);
	
	// ȸ�� ���̵�� �˻�
	User selectById(String id);
	
	
	//ȸ�� ����
	boolean updateUser(User user);
	
	//���̵� �ߺ�üũ 
	boolean idDuplicateCheck(String id);
	
	//��й�ȣ ��ġ���� üũ
	boolean pwMatch(String pw);
	
	//ȸ�� Ż��
	boolean deleteUser(String id, String pw);
	
	//���̵� ã��
	User findId(String email, String name);
	
	//��й�ȣ ã��
	User findPw(String id, String email);
	
	// �ӽú�й�ȣ �߱�
	User temporaryPw(String pw, String id);
	
	// ȸ�� ���
	List<User> UserList();
	
	//ȸ���� �̸����� �˻�
	List<User> SearchUser(String search);

	
}
