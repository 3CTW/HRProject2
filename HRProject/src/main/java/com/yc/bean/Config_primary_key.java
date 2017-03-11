package com.yc.bean;

import java.io.Serializable;

public class Config_primary_key implements Serializable{
	/*
/* 创建新表 "config_primary_key"。                                                                 */
/* "config_primary_key" : 关键字设置，包括人力资源管理，薪酬发放，激励管理，调动管理，薪酬标准，培训                               */
/* 	"prk_id" : 主键，自动增长列                                                                       */
/* 	"primary_key_table" : 关键字所涉及的数据库表名                                                        */
/* 	"primary_key" : 关键字                                                                  */
/* 	"key_name" : 中文关键字                                                                  */
/* 	"primary_key_status" : 是否为关键字                                               
create table "config_primary_key" ( 
	"prk_id" smallint identity not null,
	"primary_key_table" varchar(60) null,
	"primary_key" varchar(60) null,
	"key_name" varchar(60) null,
	"primary_key_status" bit null)  */
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -5080072361454710926L;
	private int prk_id;
	private String primary_key_table;
	private String primary_key;
	private String key_name;
	private String primary_key_status;
	public int getPrk_id() {
		return prk_id;
	}
	public void setPrk_id(int prk_id) {
		this.prk_id = prk_id;
	}
	public String getPrimary_key_table() {
		return primary_key_table;
	}
	public void setPrimary_key_table(String primary_key_table) {
		this.primary_key_table = primary_key_table;
	}
	public String getPrimary_key() {
		return primary_key;
	}
	public void setPrimary_key(String primary_key) {
		this.primary_key = primary_key;
	}
	public String getKey_name() {
		return key_name;
	}
	public void setKey_name(String key_name) {
		this.key_name = key_name;
	}
	public String getPrimary_key_status() {
		return primary_key_status;
	}
	public void setPrimary_key_status(String primary_key_status) {
		this.primary_key_status = primary_key_status;
	}
	@Override
	public String toString() {
		return "config_primary_key [prk_id=" + prk_id + ", primary_key_table=" + primary_key_table + ", primary_key="
				+ primary_key + ", key_name=" + key_name + ", primary_key_status=" + primary_key_status + "]";
	}
	
}
