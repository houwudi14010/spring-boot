package com.jk.service.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Service;

import com.jk.dao.SpringBootDao;
import com.jk.model.UserBean;
@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	private SpringBootDao springBootDao;
	
	 

	@Override
	public List<UserBean> queryUserPage() {
		// TODO Auto-generated method stub
		System.out.println("进来了Two");
		return springBootDao.queryUserPage();
	}
	
	
	@Override
	public void addUser(UserBean userBean) {
		springBootDao.addUser(userBean);
	}
	

}
