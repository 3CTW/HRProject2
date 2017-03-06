package com.yc.bean;

import java.io.Serializable;

public class Salary_standard_details implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 2968095403010078922L;
	//*创建新表 "salary_standard_details"。                                                            */
//* "salary_standard_details" : 薪酬标准单详细信息                                                      */
	private int sdt_id;// 主键，自动增长列                                                                       */
	private String standard_id;// 薪酬标准单编号                                                                   */
	private String standard_name;// 薪酬标准单名称                                                                 */
	private int item_id;// 薪酬项目序号                                                                        */
	private String item_name;// 薪酬项目名称                                                                      */
	private double salary; //薪酬金额                                                                           */  
	@Override
	public String toString() {
		return "salary_standard_details [sdt_id=" + sdt_id + ", standard_id=" + standard_id + ", standard_name="
				+ standard_name + ", item_id=" + item_id + ", item_name=" + item_name + ", salary=" + salary + "]";
	}
	public int getSdt_id() {
		return sdt_id;
	}
	public void setSdt_id(int sdt_id) {
		this.sdt_id = sdt_id;
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
	public int getItem_id() {
		return item_id;
	}
	public void setItem_id(int item_id) {
		this.item_id = item_id;
	}
	public String getItem_name() {
		return item_name;
	}
	public void setItem_name(String item_name) {
		this.item_name = item_name;
	}
	public double getSalary() {
		return salary;
	}
	public void setSalary(double salary) {
		this.salary = salary;
	}


}
