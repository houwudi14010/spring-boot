package com.jk.service.user;

import java.util.List;

import com.jk.model.UserBean;

public interface UserService {

	List<UserBean> queryUserPage();

	void addUser(UserBean userBean);

}
