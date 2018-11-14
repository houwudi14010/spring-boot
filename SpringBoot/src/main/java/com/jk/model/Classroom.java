/** 
 * <pre>项目名称:OnlineCourses-consumer 
 * 文件名称:Classroom.java 
 * 包名:com.jk.model.classroom 
 * 创建日期:2018年10月30日上午11:14:21 
 * Copyright (c) 2018, lxm_man@163.com All Rights Reserved.</pre> 
 */  
package com.jk.model;


public class Classroom {

	private String cid; //课堂id
	
	private String cname;//课堂名称
	
	private String starttime;//开课时间
	
	private int cclass;//开课班级
	
	private String subject;//开课学科
	
	private String subjectinfo;//授课信息
	
	private String teacherid;//老师id
	
	private String studentid;//学生id
	
	private String assistantid;//助教id
	
	private String courseinfo;//课程说明
	
	private int oddeven;//单个课程&系列课程状态
	
	private int evencstatus;//系列课程状态
	
	private String childcourseid;//系列课程id
	
	private String endtime;
	

	//业务字段
	private String teachername;
	
	private String studentname;
	
	private String assistantname;
	
	private String childcoursename;

	
	
	public String getEndtime() {
		return endtime;
	}

	public void setEndtime(String endtime) {
		this.endtime = endtime;
	}

	public String getCid() {
		return cid;
	}

	public void setCid(String cid) {
		this.cid = cid;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public String getStarttime() {
		return starttime;
	}

	public void setStarttime(String starttime) {
		this.starttime = starttime;
	}

	public int getCclass() {
		return cclass;
	}

	public void setCclass(int cclass) {
		this.cclass = cclass;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getSubjectinfo() {
		return subjectinfo;
	}

	public void setSubjectinfo(String subjectinfo) {
		this.subjectinfo = subjectinfo;
	}

	public String getTeacherid() {
		return teacherid;
	}

	public void setTeacherid(String teacherid) {
		this.teacherid = teacherid;
	}

	public String getStudentid() {
		return studentid;
	}

	public void setStudentid(String studentid) {
		this.studentid = studentid;
	}

	public String getAssistantid() {
		return assistantid;
	}

	public void setAssistantid(String assistantid) {
		this.assistantid = assistantid;
	}

	public String getCourseinfo() {
		return courseinfo;
	}

	public void setCourseinfo(String courseinfo) {
		this.courseinfo = courseinfo;
	}

	public int getOddeven() {
		return oddeven;
	}

	public void setOddeven(int oddeven) {
		this.oddeven = oddeven;
	}

	public int getEvencstatus() {
		return evencstatus;
	}

	public void setEvencstatus(int evencstatus) {
		this.evencstatus = evencstatus;
	}

	public String getChildcourseid() {
		return childcourseid;
	}

	public void setChildcourseid(String childcourseid) {
		this.childcourseid = childcourseid;
	}

	public String getTeachername() {
		return teachername;
	}

	public void setTeachername(String teachername) {
		this.teachername = teachername;
	}

	public String getStudentname() {
		return studentname;
	}

	public void setStudentname(String studentname) {
		this.studentname = studentname;
	}

	public String getAssistantname() {
		return assistantname;
	}

	public void setAssistantname(String assistantname) {
		this.assistantname = assistantname;
	}

	public String getChildcoursename() {
		return childcoursename;
	}

	public void setChildcoursename(String childcoursename) {
		this.childcoursename = childcoursename;
	}
	
	
	
	
	
	
	
	
	
}
