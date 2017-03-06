package com.yc.bean;

import java.io.Serializable;

public class Config_public_char implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 3628655110618232357L;
	/*创建新表 "config_public_char"。                                                                 */
/* "config_public_char" : 公共字段设置，包括薪酬设置，职称设置，国籍，民族，宗教信仰，政治面貌，教育年限，学历,专业，特长，爱好，培训项目，培训成绩，奖励项目，奖励等级 */
/* 	"pbc_id" : 主键，自动增长列                                                                       */
/* 	"attribute_kind" : 属性的种类                                                                  */
/* 	"attribute_name" : 属性的名称                                                                
create table "config_public_char" ( 
	"pbc_id" smallint identity not null,
	"attribute_kind" varchar(60) ,
	"attribute_name" varchar(60) )  */
	private int pbc_id;
	private String attribute_kind;
	@Override
	public String toString() {
		return "config_public_char [pbc_id=" + pbc_id + ", attribute_kind=" + attribute_kind + ", attribute_name="
				+ attribute_name + "]";
	}
	private String attribute_name;
	public int getPbc_id() {
		return pbc_id;
	}
	public void setPbc_id(int pbc_id) {
		this.pbc_id = pbc_id;
	}
	public String getAttribute_kind() {
		return attribute_kind;
	}
	public void setAttribute_kind(String attribute_kind) {
		this.attribute_kind = attribute_kind;
	}
	public String getAttribute_name() {
		return attribute_name;
	}
	public void setAttribute_name(String attribute_name) {
		this.attribute_name = attribute_name;
	}
}
