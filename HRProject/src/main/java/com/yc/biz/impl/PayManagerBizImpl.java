package com.yc.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yc.bean.Salary_standard;
import com.yc.bean.Salary_standard_details;
import com.yc.biz.PayManagerBiz;
import com.yc.dao.BaseDao;

@Service
public class PayManagerBizImpl implements PayManagerBiz {
	
	private BaseDao baseDao;
	
	@Resource(name="baseDaoMybatisImpl")
	public void setBaseDaoMybatisImpl(BaseDao baseDaoMybatisImpl) {
		baseDao = baseDaoMybatisImpl;
	}
	
	//薪酬标准单详细信息的登记
	@Override
	public Salary_standard insertStandard(Salary_standard salaryStandard) {
		// TODO Auto-generated method stub
		this.baseDao.add(salaryStandard, "saveSalaryStandard");
		return salaryStandard;
	}

	@Override
	public List<Salary_standard> salaryStandardList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Salary_standard> salaryStandardList(Salary_standard salaryStandard) {
		// TODO Auto-generated method stub
		return null;
	}

	//薪酬标准基本信息表的登记
	@Override
	public Salary_standard_details saveSalarydardDetails(Salary_standard_details saveSalarydardDetails) {
		// TODO Auto-generated method stub
		this.baseDao.add(saveSalarydardDetails, "saveSalaryStandardDetails");
		return saveSalarydardDetails;
	}
	
	//复核薪酬标准
	@Override
	public Salary_standard updateSalaryDard(Salary_standard salaryStandard) {

		this.baseDao.update(salaryStandard, "updateSalaryStandard");
		return salaryStandard;
	}

}
