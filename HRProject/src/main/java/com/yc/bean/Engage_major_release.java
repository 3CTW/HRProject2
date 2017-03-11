package com.yc.bean;

import java.io.Serializable;
import java.sql.Date;

public class Engage_major_release implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -6660123847336488736L;
	//创建新表 "engage_major_release"。                                                               */
	///* "engage_major_release" : 职位发表登记表                                                           */
	private int mre_id;// 主键，自动增长列                                                                       */
	private String first_kind_id;//一级机构编号                                                                  */
	private String first_kind_name;//一级机构名称                                                                */
	private String second_kind_id;// 二级机构编号                                                                 */
	private String second_kind_name;// 二级机构名称                                                               */
	private String third_kind_id;// 三级机构编号                                                                  */
	private String third_kind_name;// 三级机构名称                                                                */
	private String major_kind_id;// 职位分类编号                                                                  */
	private String major_kind_name;// 职位分类名称                                                                */
	private String major_id;//职位编号                                                                         */
	private String major_name;// 职位名称                                                                       */
	private int human_amount;// 招聘人数                                                                     */
	private String engage_type;// 招聘类型                                                                      */
	private Date deadline;// 截至日期                                                                         */
	private String register;//登记人                                                                          */
	private String changer;// 变更人                                                                           */
	private Date regist_time;// 登记时间                                                                      */
	private Date change_time;//变更时间                                                                      */
	private String major_describe;// 职位描述                                                                   */
	private String engage_required;// 招聘要求                                                                  */  
	public int getMre_id() {
		return mre_id;
	}
	public void setMre_id(int mre_id) {
		this.mre_id = mre_id;
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
	public String getThird_kind_name() {
		return third_kind_name;
	}
	public void setThird_kind_name(String third_kind_name) {
		this.third_kind_name = third_kind_name;
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
	public int getHuman_amount() {
		return human_amount;
	}
	public void setHuman_amount(int human_amount) {
		this.human_amount = human_amount;
	}
	public String getEngage_type() {
		return engage_type;
	}
	public void setEngage_type(String engage_type) {
		this.engage_type = engage_type;
	}
	public Date getDeadline() {
		return deadline;
	}
	public void setDeadline(Date deadline) {
		this.deadline = deadline;
	}
	public String getRegister() {
		return register;
	}
	public void setRegister(String register) {
		this.register = register;
	}
	public String getChanger() {
		return changer;
	}
	public void setChanger(String changer) {
		this.changer = changer;
	}
	public Date getRegist_time() {
		return regist_time;
	}
	public void setRegist_time(Date regist_time) {
		this.regist_time = regist_time;
	}
	public Date getChange_time() {
		return change_time;
	}
	public void setChange_time(Date change_time) {
		this.change_time = change_time;
	}
	public String getMajor_describe() {
		return major_describe;
	}
	public void setMajor_describe(String major_describe) {
		this.major_describe = major_describe;
	}
	public String getEngage_required() {
		return engage_required;
	}
	public void setEngage_required(String engage_required) {
		this.engage_required = engage_required;
	}
	@Override
	public String toString() {
		return "engage_major_release [mre_id=" + mre_id + ", first_kind_id=" + first_kind_id + ", first_kind_name="
				+ first_kind_name + ", second_kind_id=" + second_kind_id + ", second_kind_name=" + second_kind_name
				+ ", third_kind_id=" + third_kind_id + ", third_kind_name=" + third_kind_name + ", major_kind_id="
				+ major_kind_id + ", major_kind_name=" + major_kind_name + ", major_id=" + major_id + ", major_name="
				+ major_name + ", human_amount=" + human_amount + ", engage_type=" + engage_type + ", deadline="
				+ deadline + ", register=" + register + ", changer=" + changer + ", regist_time=" + regist_time
				+ ", change_time=" + change_time + ", major_describe=" + major_describe + ", engage_required="
				+ engage_required + "]";
	}
	
		


}
