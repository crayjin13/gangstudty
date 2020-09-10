package com.jts.gangstudy.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.Update;

import com.jts.gangstudy.domain.User;
 
@Mapper
public interface UserMapper {

	//ȸ������
	@Insert("INSERT INTO USER_TB VALUES (#{user_no.NEXTVAL},#{name},#{phone},#{id},#{pw},#{Email}),#{bod},#{gender},#{rate},#{points},#{note}")
	public boolean insertUser(User user);
	
	/*
	 * //ȸ�� ���̵�� �б�
	 * 
	 * @Select("SELECT user_no, name, phone, id, pw, email, bod, gender, rate, points, note FROM USER_TB WHERE id=#{id}"
	 * ) public User selectById(@Param("id") String id);
	 * 
	 * //ȸ�� ���� ����
	 * 
	 * @Update("UPDATE USER_TB SET name=#{name}, phone=#{phone},id=#{id},pw=#{pw},email=#{email},bod=#{bod},gender=#{gender}"
	 * + ",rate=#{rate},points=#{points},note=#{note} WHERE id=#{id}") public
	 * boolean updateUser(User user);
	 * 
	 */
	
	
}