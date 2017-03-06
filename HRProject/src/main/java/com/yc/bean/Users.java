package com.yc.bean;

import java.io.Serializable;

public class Users implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 746602062380147958L;
	/*
	 * 
/* 创建新表 "user"。                                                                               */
/* "user" : 用户表                                                                               */
/* 	"user_id" : 主键，自动增长列                                                                      */
/* 	"user_name" : 用户名                                                                         */
/* 	"user_true_name" : 真实姓名                                                                   */
/* 	"user_password" : 密码  
 * 
 * 
	 * create table "users" ( 
	"u_id" smallint identity not null,
	"u_name" varchar(60) not null,
	"u_true_name" varchar(60) not null,
	"u_password" varchar(60) not null)  
	 * 
	 * */
	private int u_id;
	private String u_name;
	private String u_true_name;
	private String u_password;
	public int getU_id() {
		return u_id;
	}
	public void setU_id(int u_id) {
		this.u_id = u_id;
	}
	public String getU_name() {
		return u_name;
	}
	public void setU_name(String u_name) {
		this.u_name = u_name;
	}
	public String getU_true_name() {
		return u_true_name;
	}
	public void setU_true_name(String u_true_name) {
		this.u_true_name = u_true_name;
	}
	public String getU_password() {
		return u_password;
	}
	public void setU_password(String u_password) {
		this.u_password = u_password;
	}
	@Override
	public String toString() {
		return "users [u_id=" + u_id + ", u_name=" + u_name + ", u_true_name=" + u_true_name + ", u_password="
				+ u_password + "]";
	}
	
	

}
