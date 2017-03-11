package com.yc.bean;

import java.io.Serializable;

public class Config_file_third_kind implements Serializable{
/**
	 * 
	 */
	private static final long serialVersionUID = -708680282569132862L;
	/* 创建新表 "config_file_third_kind"。                                                             */
/* "config_file_third_kind" : 三级机构设置                                                          */
/* 	"ftk_id" : 主键，自动增长列                                                                       */
/* 	"first_kind_id" : 一级机构编号                                                                  */
/* 	"first_kind_name" : 一级机构名称                                                                */
/* 	"second_kind_id" : 二级机构编号                                                                 */
/* 	"second_kind_name" : 二级机构名称                                                               */
/* 	"third_kind_id" : 三级机构编号                                                                  */
/* 	"third_kind_name" : 三级机构名称                                                                */
/* 	"third_kind_sale_id" : 三级机构销售责任人编号                                                        */
/* 	"third_kind_is_retail" : 三级机构是否为零售店 
 *                                                       
create table "config_file_third_kind" (
 
	"ftk_id" smallint identity not null,
	"first_kind_id" char(2) ,
	"first_kind_name" varchar(60) ,
	"second_kind_id" char(2) ,
	"second_kind_name" varchar(60) ,
	"third_kind_id" char(2) ,
	"third_kind_name" varchar(60) ,
	"third_kind_sale_id" text ,
	"third_kind_is_retail" char(2) )*/
	private int ftk_id;
	private String first_kind_id;
	private String first_kind_name;
	private String second_kind_id;
	private String second_kind_name;
	private String third_kind_id;
	private String third_kind_name;
	private String third_kind_sale_id;
	private String third_kind_is_retail;
	@Override
	public String toString() {
		return "config_file_third_kind [ftk_id=" + ftk_id + ", first_kind_id=" + first_kind_id + ", first_kind_name="
				+ first_kind_name + ", second_kind_id=" + second_kind_id + ", second_kind_name=" + second_kind_name
				+ ", third_kind_id=" + third_kind_id + ", third_kind_name=" + third_kind_name + ", third_kind_sale_id="
				+ third_kind_sale_id + ", third_kind_is_retail=" + third_kind_is_retail + "]";
	}
	public int getFtk_id() {
		return ftk_id;
	}
	public void setFtk_id(int ftk_id) {
		this.ftk_id = ftk_id;
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
	public String getSecond_kind_id() {
		return second_kind_id;
	}
	public void setSecond_kind_id(String second_kind_id) {
		this.second_kind_id = second_kind_id;
	}
	public String getSecond_kind_name() {
		return second_kind_name;
	}
	public void setSecond_kind_name(String second_kind_name) {
		this.second_kind_name = second_kind_name;
	}
	public String getThird_kind_id() {
		return third_kind_id;
	}
	public void setThird_kind_id(String third_kind_id) {
		this.third_kind_id = third_kind_id;
	}
	public String getThird_kind_is_retail() {
		return third_kind_is_retail;
	}
	public void setThird_kind_is_retail(String third_kind_is_retail) {
		this.third_kind_is_retail = third_kind_is_retail;
	}
}
