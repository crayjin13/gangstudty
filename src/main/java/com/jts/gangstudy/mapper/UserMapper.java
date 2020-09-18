package com.jts.gangstudy.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.jts.gangstudy.domain.User;
 
@Mapper
public interface UserMapper {

	//ȸ������ 
	@Insert("INSERT INTO USER_TB(name, phone, id, pw, email, bod, gender)"
	+ " VALUES (#{name, jdbcType=VARCHAR},#{phone},#{id},#{pw},#{email},#{bod},#{gender})")
	public boolean insertUser(User user);
	
	
	  //ȸ�� ���̵�� �б� 
	 @Select("SELECT user_no, name, phone, id, pw, email, bod, gender, rate, points, note FROM USER_TB WHERE id=#{id}"
	  ) public User selectById(@Param("id") String id);
	 
	 
	  //ȸ�� ���� ����
	 @Update("UPDATE USER_TB SET name=#{name}, phone=#{phone},id=#{id},pw=#{pw},email=#{email},bod=#{bod},gender=#{gender}"
	  + ",rate=#{rate},points=#{points},note=#{note} WHERE id=#{id}")
	 public boolean updateUser(User user);
	 
	 
	 
	 //���̵� �ߺ�üũ
	 @Select("SELECT count(*) cnt FROM USR_TB WHERE id=#{id}")
	public  boolean idDuplicateCheck(String id);
	 
	 //�����ġ ���� 
	 @Select("SELECT count(*) cnt FROM USER_TB WHERE pw=#{pw}")
	 public boolean pwMatch(@Param("pw")String pw);
	 
	
	//���� ���
	@Select("SELECT user_no, name, phone, id, email, bod, gender, rate, points, note from user_tb")
	public List<User> userList();
	
	 
}
