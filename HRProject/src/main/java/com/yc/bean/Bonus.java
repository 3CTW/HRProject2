package com.yc.bean;

import java.io.Serializable;
import java.sql.Date;

public class Bonus implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1279606027168283814L;
	//private static final long serialVersionUID=
	
	// 创建新表 "bonus"。                                                                              */
	//* "bonus" : 激励登记表                                                                            */
	private int bon_id;//主键，自动增长列                                                                       */
	private String major_kind_id;// 职位分类编号                                                                  */
	private String major_kind_name;// 职位分类名称                                                                */
	private String major_id;//职位编号                                                                         */
	private String major_name;// 职位名称                                                                       */
	private String human_id;// 人力资源档案编号                                                                     */
	private String human_name;// 姓名                                                                         */
	private String bonus_item;// 激励项目名称                                                                     */
	private double bonus_worth;// 激励价值                                                                      */
	private String bonus_degree;// 激励等级                                                                     */
	private String remark;// 备注                                                                             */
	private String register;// 登记人                                                                          */
	private String checker;// 复核人                                                                           */
	private Date regist_time;// 登记时间                                                                      */
	private Date check_time;// 复核时间                                                                       */
	private int check_status;// 复核状态                                                                     */  
	public int getBon_id() {
		return bon_id;
	}
	public void setBon_id(int bon_id) {
		this.bon_id = bon_id;
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
	public String getHuman_id() {
		return human_id;
	}
	public void setHuman_id(String human_id) {
		this.human_id = human_id;
	}
	public String getHuman_name() {
		return human_name;
	}
	public void setHuman_name(String human_name) {
		this.human_name = human_name;
	}
	public String getBonus_item() {
		return bonus_item;
	}
	public void setBonus_item(String bonus_item) {
		this.bonus_item = bonus_item;
	}
	public double getBonus_worth() {
		return bonus_worth;
	}
	public void setBonus_worth(double bonus_worth) {
		this.bonus_worth = bonus_worth;
	}
	public String getBonus_degree() {
		return bonus_degree;
	}
	public void setBonus_degree(String bonus_degree) {
		this.bonus_degree = bonus_degree;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public String getRegister() {
		return register;
	}
	public void setRegister(String register) {
		this.register = register;
	}
	public String getChecker() {
		return checker;
	}
	public void setChecker(String checker) {
		this.checker = checker;
	}
	public Date getRegist_time() {
		return regist_time;
	}
	public void setRegist_time(Date regist_time) {
		this.regist_time = regist_time;
	}
	public Date getCheck_time() {
		return check_time;
	}
	public void setCheck_time(Date check_time) {
		this.check_time = check_time;
	}
	public int getCheck_status() {
		return check_status;
	}
	public void setCheck_status(int check_status) {
		this.check_status = check_status;
	}
	@Override
	public String toString() {
		return "bonus [bon_id=" + bon_id + ", major_kind_id=" + major_kind_id + ", major_kind_name=" + major_kind_name
				+ ", major_id=" + major_id + ", major_name=" + major_name + ", human_id=" + human_id + ", human_name="
				+ human_name + ", bonus_item=" + bonus_item + ", bonus_worth=" + bonus_worth + ", bonus_degree="
				+ bonus_degree + ", remark=" + remark + ", register=" + register + ", checker=" + checker
				+ ", regist_time=" + regist_time + ", check_time=" + check_time + ", check_status=" + check_status
				+ "]";
	}
	 
	 

}
