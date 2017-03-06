package com.yc.bean;

import java.io.Serializable;

public class Salary_grant_details implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 615090420222896433L;
	//创建新表 "salary_grant_details"。                                                               */
	//* "salary_grant_details" : 薪酬发放详细信息                                                          */
	private int grd_id;// 主键，自动增长列                                                                       */
	private String salary_grant_id;// 薪酬发放编号                                                                */
	private String human_id;//档案编号                                                                         */
	private String human_name;// 姓名                                                                         */
	private double bouns_sum;// 奖励金额                                                                        */
	private double sale_sum;// 销售绩效金额                                                                       */
	private double deduct_sum;// 应扣金额                                                                       */
	private double salary_standard_sum;// 标准薪酬总额                                                            */
	private double salary_paid_sum;// 实发薪酬总额                                                                */  
	public int getGrd_id() {
		return grd_id;
	}
	public void setGrd_id(int grd_id) {
		this.grd_id = grd_id;
	}
	public String getSalary_grant_id() {
		return salary_grant_id;
	}
	public void setSalary_grant_id(String salary_grant_id) {
		this.salary_grant_id = salary_grant_id;
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
	public double getBouns_sum() {
		return bouns_sum;
	}
	public void setBouns_sum(double bouns_sum) {
		this.bouns_sum = bouns_sum;
	}
	public double getSale_sum() {
		return sale_sum;
	}
	public void setSale_sum(double sale_sum) {
		this.sale_sum = sale_sum;
	}
	public double getDeduct_sum() {
		return deduct_sum;
	}
	public void setDeduct_sum(double deduct_sum) {
		this.deduct_sum = deduct_sum;
	}
	public double getSalary_standard_sum() {
		return salary_standard_sum;
	}
	public void setSalary_standard_sum(double salary_standard_sum) {
		this.salary_standard_sum = salary_standard_sum;
	}
	public double getSalary_paid_sum() {
		return salary_paid_sum;
	}
	public void setSalary_paid_sum(double salary_paid_sum) {
		this.salary_paid_sum = salary_paid_sum;
	}
	@Override
	public String toString() {
		return "salary_grant_details [grd_id=" + grd_id + ", salary_grant_id=" + salary_grant_id + ", human_id="
				+ human_id + ", human_name=" + human_name + ", bouns_sum=" + bouns_sum + ", sale_sum=" + sale_sum
				+ ", deduct_sum=" + deduct_sum + ", salary_standard_sum=" + salary_standard_sum + ", salary_paid_sum="
				+ salary_paid_sum + "]";
	}
	

}
