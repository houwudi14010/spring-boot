package com.jk.service;

import java.util.List;

import com.jk.model.Classroom;
import com.jk.model.TreeBean;
import com.jk.model.UserBean;

public interface SpringBootService {

	List<UserBean> queryUserPage();

	List<TreeBean> queryTreeTwo();

	void addUser(UserBean userBean);

	UserBean deleteEventOne(String id);

	UserBean editUserPage(String id);


}
