package com.yc.controller;

import javax.annotation.Resource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yc.biz.PayManagerBiz;


@Controller 
public class PayManagerController {
	
	private static final Log logger = LogFactory.getLog(Human_fileController.class);
	
	private PayManagerBiz payManager;
	
	@Resource(name="payManagerBizImpl")
	public void setPayManager(PayManagerBiz payManager) {
		this.payManager = payManager;
	}
	
	@RequestMapping(value ="/toPayManager.action")
	public String toPayManager(){
		logger.info("到薪酬的主頁了");
		return "payment/PAY-manager";
	} 
	
	@RequestMapping(value ="/toPAY-standard-reg.ation")
	public String toPayStandReg(){
		logger.info("到薪酬标准登记");
		return "payment/PAY-standard-reg";
	} 
	
	
	
	
}
