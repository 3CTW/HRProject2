package com.yc.biz;

import java.util.List;

import com.yc.bean.Salary_standard;
import com.yc.bean.Salary_standard_details;

public interface PayManagerBiz {
	
	//薪酬标准的登记
	Salary_standard insertStandard(Salary_standard salaryStandard);
	
	Salary_standard_details saveSalarydardDetails(Salary_standard_details saveSalarydardDetails);
	
	//查看薪酬标准
	List<Salary_standard> salaryStandardList();
	
	//根据条件查看薪酬标准
	List<Salary_standard> salaryStandardList(Salary_standard salaryStandard);
	
	Salary_standard updateSalaryDard(Salary_standard salaryStandard);
	
}
