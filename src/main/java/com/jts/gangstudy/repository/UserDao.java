package com.jts.gangstudy.repository;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.web.multipart.MultipartFile;

import com.jts.gangstudy.domain.Admin;
import com.jts.gangstudy.domain.User;


public interface UserDao {

	

	
	
	// ȸ�� ���� Create
	boolean newUser(User user);
	
	// ȸ�� ���� + �������� ��ȸ
	User UserInfo(String name);
	
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
