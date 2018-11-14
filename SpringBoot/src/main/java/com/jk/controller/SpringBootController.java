package com.jk.controller;


import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.jk.model.Classroom;
import com.jk.model.TreeBean;
import com.jk.model.UserBean;
import com.jk.service.SpringBootService;


@Controller
@RequestMapping("helloTwo")
public class SpringBootController {
	@Autowired
	private SpringBootService springBootService;
	
	
	//树页面
		@RequestMapping("/Tree")
		public String toindex(){
			return "view";
		}
    
		
		//查询树
		@RequestMapping("queryTree")
		@ResponseBody
		public List<TreeBean> queryTreeTwo(){
			List<TreeBean> Tree = springBootService.queryTreeTwo();
			return Tree;
		}
  //跳转查询
  	@RequestMapping("/tolist")
  	public String tolist(){
  		return "list";
  	}
    
    
    @RequestMapping("querylists")
    @ResponseBody
	public List<UserBean> queryUserPage(){
    	  
		return springBootService.queryUserPage();
	}
    
  //跳转新增页面
  	@RequestMapping("/toAddUser")
  	public String toAddUser(){
  		return "addlist";
  	}
  	
  	
  	 //跳转修改页面
  	@RequestMapping("/updateEvent")
  	@ResponseBody
  	public ModelAndView updateEvent(String id,ModelMap map){
  		System.out.println(id);
  		UserBean userBean = springBootService.editUserPage(id);
  		ModelAndView model = new ModelAndView();
  		model.addObject("userBean", userBean);
  		model.setViewName("addlist");
  		return model;
  	}
  	
  	
  	@RequestMapping("deleteEventOne")
    @ResponseBody
	public UserBean deleteEventOne(String id){
    	  
		return springBootService.deleteEventOne(id);
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
			springBootService.addUser(userBean);
			
		}
	}
  	
  	
}