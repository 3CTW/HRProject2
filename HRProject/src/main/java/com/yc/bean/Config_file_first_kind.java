package com.yc.bean;

import java.io.Serializable;

public class Config_file_first_kind implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 2741710405483652303L;
	/*
	 * /* 创建新表 "config_file_first_kind"。                                                             */
/* "config_file_first_kind" : 一级机构设置                                                          */
/* 	"ffk_id" : 主键，自动增长列                                                                       */
/* 	"first_kind_id" : 一级机构编号                                                                  */
/* 	"first_kind_name" : 一级机构名称                                                                */
/* 	"first_kind_salary_id" : 一级机构薪酬发放责任人编号                                                    */
/* 	"first_kind_sale_id" : 一级机构销售责任人编号       
 * 
 *                                                    
create table "config_file_first_kind" ( 
	"ffk_id" smallint identity not null,
	"first_kind_id" char(2) ,
	"first_kind_name" varchar(60) ,
	"first_kind_salary_id" text ,
	"first_kind_sale_id" text )  
	 */
	private int ffk_id;
	private String first_kind_id;
	private String first_kind_name;
	@Override
	public String toString() {
		return "config_file_first_kind [ffk_id=" + ffk_id + ", first_kind_id=" + first_kind_id + ", first_kind_name="
				+ first_kind_name + ", first_kind_salary_id=" + first_kind_salary_id + ", first_kind_sale_id="
				+ first_kind_sale_id + "]";
	}
	private String first_kind_salary_id; 
	private String first_kind_sale_id;
	public int getFfk_id() {
		return ffk_id;
	}
	public void setFfk_id(int ffk_id) {
		this.ffk_id = ffk_id;
	}
	public String getFirst_kind_id() {
		return first_kind_id;
	}
	public void setFirst_kind_id(String first_kind_id) {
		this.first_kind_id = first_kind_id;
	}
	public String getFirst_kind_name() {
		return first_kind_name;
	}
	public void setFirst_kind_name(String first_kind_name) {
		this.first_kind_name = first_kind_name;
	}
	public String getFirst_kind_salary_id() {
		return first_kind_salary_id;
	}
	public void setFirst_kind_salary_id(String first_kind_salary_id) {
		this.first_kind_salary_id = first_kind_salary_id;
	}
	public String getFirst_kind_sale_id() {
		return first_kind_sale_id;
	}
	public void setFirst_kind_sale_id(String first_kind_sale_id) {
		this.first_kind_sale_id = first_kind_sale_id;
	}
}
