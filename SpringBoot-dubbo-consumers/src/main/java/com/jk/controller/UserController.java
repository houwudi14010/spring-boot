package com.jk.controller;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jk.model.UserBean;
import com.jk.service.user.UserService;

@Controller
@RequestMapping("user")
public class UserController {

	@Autowired
	private UserService userService;
	
	
	
	@RequestMapping("userList")
	public String userList(){
		
		return "WEB-INF/user/list";
	}
	
	
	 	@RequestMapping("querylists")
	    @ResponseBody
		public List<UserBean> queryUserPage(){
	    	  System.out.println("555");
			return userService.queryUserPage();
		}
	 	
	 	
	 	@RequestMapping("addUser")
		@ResponseBody
		public void addUser(UserBean userBean){
			String id = userBean.getId();
			if(id != null  && id != ""){
				/*busService.updateBookId(logBean);*/
				System.out.println("555");
			}else {
				String string = UUID.randomUUID().toString();
				userBean.setId(string);
				userService.addUser(userBean);
				
			}
		}
	 	
	 	//跳转新增页面
	  	@RequestMapping("/toAddUser")
	  	public String toAddUser(){
	  		return "WEB-INF/user/addlist";
	  	}
	 	
	
}
