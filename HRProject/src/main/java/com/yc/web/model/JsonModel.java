package com.yc.web.model;

import java.io.Serializable;

public class JsonModel implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	private Integer code; //编号：  0  1
	private String errorMsg;  //错误信息
	private Object obj;
	
	
	public Integer getCode() {
		return code;
	}
	public void setCode(Integer code) {
		this.code = code;
	}
	public String getErrorMsg() {
		return errorMsg;
	}
	public void setErrorMsg(String errorMsg) {
		this.errorMsg = errorMsg;
	}
	public Object getObj() {
		return obj;
	}
	public void setObj(Object obj) {
		this.obj = obj;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
}
