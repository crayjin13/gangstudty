package com.jts.gangstudy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.jts.gangstudy.exception.UserNotFoundException;
import com.jts.gangstudy.repository.UserDao;
import com.jts.gangstudy.exception.PasswordMismatchException;
import com.jts.gangstudy.domain.User;
import com.jts.gangstudy.exception.UserNotFoundException;

public class UserServiceImpl implements UserService {

	@Autowired
	UserDao userDao;
	
	//�α���
	@Override
	public User signIn(String id, String pw) throws Exception, PasswordMismatchException, UserNotFoundException  {
		User user= userDao.selectById(id);
		if(user == null) {
			throw new UserNotFoundException(id + "�� ���� ���̵� �Դϴ�.");
		}
		if(!user.isMatchPassword(pw)) {
			throw new PasswordMismatchException("�н����尡 ��ġ���� �ʽ��ϴ�.");
		}
		return user;
	}

	@Override
	public boolean insertUser(User user) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public User userInfo(Integer user_no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User selectById(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean updateUser(User user) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean idDuplicateCheck(String id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean pwMatch(String pw) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteUser(String id, String pw) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public User findId(String email, String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User findPw(String id, String email) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User temporaryPw(String pw, String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<User> UserList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<User> findUserList(String search) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	

	
	
	
	
}
