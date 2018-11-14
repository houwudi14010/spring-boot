package com.jk.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.jk.model.TreeBean;
import com.jk.model.UserBean;

@Mapper
public interface SpringBootDao {
	
	
	@Select(value ="select * from t_userTwo" )
	List<UserBean> queryUserPage();
	
	@Select(value ="select * from t_tree" )
	List<TreeBean> queryTreeTwo();

	@Insert("insert into t_userTwo values(#{id},#{name},#{sex},#{hobby},#{nickname})")
	void addUser(UserBean userBean);

	@Delete(value="delete from t_userTwo where id in('${id}')")
	UserBean deleteEventOne(@Param(value="id")String id);

	
			
		@Update(value = { "select * from t_userTwo where id in('${id}')" })
		UserBean editUserPage(@Param(value="id")String id);


		


}
