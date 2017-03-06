package com.yc.bean;

import java.io.Serializable;
import java.sql.Date;

public class Salary_standard implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 4604034954045299599L;
	//*创建新表 "salary_standard"。                                                                    */
//* "salary_standard" : 薪酬标准基本信息表                                                              */
	private int ssd_id;// 主键，自动增长列                                                                       */
	private String standard_id;//薪酬标准单编号                                                                   */
	private String standard_name;// 薪酬标准单名称                                                                 */
	private String designer;// 制定者名字                                                                        */
	private String register;// 登记人                                                                          */
	private String checker;// 复核人                                                                           */
	private String changer;/// 变更人                                                                           */
	private Date regist_time;// 登记时间                                                                      */
	private Date check_time;// 复核时间                                                                       */
	private Date change_time;// 变更时间                                                                      */
	private double salary_sum;// 薪酬总额                                                                       */
	private int check_status;// 是否经过复核                                                                   */
	private int change_status;// 更改状态                                                                    */
	private String check_comment;// 复核意见                                                                   */ 
	private String remark;// 备注                                                                             */  
	public int getSsd_id() {
		return ssd_id;
	}
	public void setSsd_id(int ssd_id) {
		this.ssd_id = ssd_id;
	}
	public String getStandard_id() {
		return standard_id;
	}
	public void setStandard_id(String standard_id) {
		this.standard_id = standard_id;
	}
	public String getStandard_name() {
		return standard_name;
	}
	public void setStandard_name(String standard_name) {
		this.standard_name = standard_name;
	}
	public String getDesigner() {
		return designer;
	}
	public void setDesigner(String designer) {
		this.designer = designer;
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
	public Date getCheck_time() {
		return check_time;
	}
	public void setCheck_time(Date check_time) {
		this.check_time = check_time;
	}
	public Date getChange_time() {
		return change_time;
	}
	public void setChange_time(Date change_time) {
		this.change_time = change_time;
	}
	public double getSalary_sum() {
		return salary_sum;
	}
	public void setSalary_sum(double salary_sum) {
		this.salary_sum = salary_sum;
	}
	public int getCheck_status() {
		return check_status;
	}
	public void setCheck_status(int check_status) {
		this.check_status = check_status;
	}
	public int getChange_status() {
		return change_status;
	}
	public void setChange_status(int change_status) {
		this.change_status = change_status;
	}
	public String getCheck_comment() {
		return check_comment;
	}
	public void setCheck_comment(String check_comment) {
		this.check_comment = check_comment;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	@Override
	public String toString() {
		return "salary_standard [ssd_id=" + ssd_id + ", standard_id=" + standard_id + ", standard_name=" + standard_name
				+ ", designer=" + designer + ", register=" + register + ", checker=" + checker + ", changer=" + changer
				+ ", regist_time=" + regist_time + ", check_time=" + check_time + ", change_time=" + change_time
				+ ", salary_sum=" + salary_sum + ", check_status=" + check_status + ", change_status=" + change_status
				+ ", check_comment=" + check_comment + ", remark=" + remark + "]";
	}

	

}
