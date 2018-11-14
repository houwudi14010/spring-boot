package com.jk.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jk.dao.SpringBootDao;
import com.jk.model.Classroom;
import com.jk.model.TreeBean;
import com.jk.model.UserBean;

@Service
public class SpringBootServiceImpl implements SpringBootService{

	@Autowired
	private SpringBootDao springBootDao;
	@Override
	public List<UserBean> queryUserPage() {
		return springBootDao.queryUserPage();
	}
	@Override
	public List<TreeBean> queryTreeTwo() {
		// TODO Auto-generated method stub
		return springBootDao.queryTreeTwo();
	}
	@Override
	public void addUser(UserBean userBean) {
		// TODO Auto-generated method stub
		springBootDao.addUser(userBean);
	}
	@Override
	public UserBean deleteEventOne(String id) {
		// TODO Auto-generated method stub
		return springBootDao.deleteEventOne(id);
	}
	@Override
	public UserBean editUserPage(String id) {
		// TODO Auto-generated method stub
		return springBootDao.editUserPage(id);
	}
	

	

	

	
}
