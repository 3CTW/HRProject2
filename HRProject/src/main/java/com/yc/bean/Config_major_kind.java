package com.yc.bean;

import java.io.Serializable;

public class Config_major_kind implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -4171995676369694679L;
	/*创建新表 "config_major_kind"。                                                                  */
/* "config_major_kind" : 职位分类设置                                                               */
/* 	"mfk_id" : 主键，自动增长列                                                                       */
/* 	"major_kind_id" : 职位分类编号                                                                  */
/* 	"major_kind_name" : 职分类位名称                                                    
create table "config_major_kind" ( 
	"mfk_id" smallint identity not null,
	"major_kind_id" char(2) null,
	"major_kind_name" varchar(60) null)*/
	private int mfk_id;
	private String major_kind_id;
	private String major_kind_name;
	public int getMfk_id() {
		return mfk_id;
	}
	@Override
	public String toString() {
		return "config_major_kind [mfk_id=" + mfk_id + ", major_kind_id=" + major_kind_id + ", major_kind_name="
				+ major_kind_name + "]";
	}
	public void setMfk_id(int mfk_id) {
		this.mfk_id = mfk_id;
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
}
