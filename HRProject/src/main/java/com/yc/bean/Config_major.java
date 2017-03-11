package com.yc.bean;

import java.io.Serializable;

public class Config_major implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 2002599314421773100L;
	/* 创建新表 "config_major"。                                                                       */
/* "config_major" : 职位设置                                                                      */
/* 	"mak_id" : 主键，自动增长列                                                                       */
/* 	"major_kind_id" : 职位分类编号                                                                  */
/* 	"major_kind_name" : 职位分类名称                                                                */
/* 	"major_id" : 职位编号                                                                         */
/* 	"major_name" : 职位名称                                                                       */ 
/* 	"test_amount" : 题套数量                                                                     
create table "config_major" ( 
	"mak_id" smallint identity not null,
	"major_kind_id" char(2) null,
	"major_kind_name" varchar(60) null,
	"major_id" char(2) null,
	"major_name" varchar(60) null,
	"test_amount" smallint null)  */
	private int mak_id;
	private String major_kind_id;
	private String major_kind_name;
	private String major_id;
	private String major_name;
	private String test_amount;
	@Override
	public String toString() {
		return "config_major [mak_id=" + mak_id + ", major_kind_id=" + major_kind_id + ", major_kind_name="
				+ major_kind_name + ", major_id=" + major_id + ", major_name=" + major_name + ", test_amount="
				+ test_amount + "]";
	}
	public int getMak_id() {
		return mak_id;
	}
	public void setMak_id(int mak_id) {
		this.mak_id = mak_id;
	}
	public String getMajor_kind_id() {
		return major_kind_id;
	}
	public void setMajor_kind_id(String major_kind_id) {
		this.major_kind_id = major_kind_id;
	}
	public String getMajor_kind_name() {
		return major_kind_name;
	}
	public void setMajor_kind_name(String major_kind_name) {
		this.major_kind_name = major_kind_name;
	}
	public String getMajor_id() {
		return major_id;
	}
	public void setMajor_id(String major_id) {
		this.major_id = major_id;
	}
	public String getMajor_name() {
		return major_name;
	}
	public void setMajor_name(String major_name) {
		this.major_name = major_name;
	}
	public String getTest_amount() {
		return test_amount;
	}
	public void setTest_amount(String test_amount) {
		this.test_amount = test_amount;
	}
}
