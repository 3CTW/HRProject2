package com.yc.bean;

import java.io.Serializable;

public class Engage_exam_details implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 522226350961182992L;
	//创建新表 "engage_exam_details"。                                                                */
	//* "engage_exam_details" : 试卷详细信息                                                             */
	private int exd_id;// 主键，自动增长列                                                                       */
	private String exam_number;//试卷编号                                                                      */
	private String first_kind_id;// 试题一级分类编号                                                                */
	private String first_kind_name;// 试题一级分类名称                                                              */
	private String second_kind_id;// 试题二级分类编号                                                               */
	private String second_kind_name;// 试题二级分类名称                                                             */
	private int question_amount;//出题数量                                                                  */  
	public int getExd_id() {
		return exd_id;
	}
	public void setExd_id(int exd_id) {
		this.exd_id = exd_id;
	}
	public String getExam_number() {
		return exam_number;
	}
	public void setExam_number(String exam_number) {
		this.exam_number = exam_number;
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
	public int getQuestion_amount() {
		return question_amount;
	}
	public void setQuestion_amount(int question_amount) {
		this.question_amount = question_amount;
	}
	@Override
	public String toString() {
		return "engage_exam_details [exd_id=" + exd_id + ", exam_number=" + exam_number + ", first_kind_id="
				+ first_kind_id + ", first_kind_name=" + first_kind_name + ", second_kind_id=" + second_kind_id
				+ ", second_kind_name=" + second_kind_name + ", question_amount=" + question_amount + "]";
	}
	

}
