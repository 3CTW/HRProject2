package com.yc.controller;
import java.util.List;

import javax.annotation.Resource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.yc.bean.Config_public_char;
import com.yc.bean.Human_file;
import com.yc.biz.Human_fileBiz;

@Controller 
public class Human_fileController {

	private static final Log logger = LogFactory.getLog(Human_fileController.class);
	private  Human_fileBiz human_fileBiz;
	
	@Resource(name="human_fileBizImpl")
	public void setHuman_fileBiz(Human_fileBiz human_fileBiz) {
		this.human_fileBiz = human_fileBiz;
	}


	
	@RequestMapping(value ="toHR-specialist.action")
	public String toHR_specialist(){
		logger.info("toHR-specialist called....");
		return "HR_specialist";
	}
	
	//去到人力资源登记的页面
	@RequestMapping(value = "toHR_file_reg")
	public String toHR_file_reg(Model model){
		logger.info("toHR_file_reg called....");
//		List<Config_public_char> config_public_chars = this.human_fileBiz.getAllConfig_public_chars();     
//		model.addAttribute("config_public_chars",config_public_chars);
//		//Book book=this.bookBiz.
//		List<Human_file> human_fileList=this.human_fileBiz.getAllHuman_file();  
//		
//		model.addAttribute("human_fileList",human_fileList);
		return "HR_file_reg";
	}
	
	
}
