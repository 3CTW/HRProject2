package com.yc.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yc.bean.HumanFile_dig;
import com.yc.biz.HumanFile_digBiz;
import com.yc.dao.BaseDao;

@Service
public class HumanFile_digBizImpl implements HumanFile_digBiz {
	private BaseDao basedao;
	@Resource(name="baseDaoMybatisImpl")
	public void setBasedao(BaseDao basedao) {
		this.basedao = basedao;
	}
	@Override
	public List<HumanFile_dig> getAllHumanFile_dig() {
		List<HumanFile_dig> list=this.basedao.findAll(new HumanFile_dig(), "getAllHumanFile_dig");
		return list;
	}
	@Override
	public HumanFile_dig save(HumanFile_dig humanFile_dig) {
		this.basedao.add(humanFile_dig, "saveHumanFile_dig");
		return humanFile_dig;
	}

	@Override
	public HumanFile_dig update(HumanFile_dig humanFile_dig) {
		this.basedao.add(humanFile_dig, "updateHumanFile_dig");
		return humanFile_dig;
	}
	@Override
	public HumanFile_dig delete(HumanFile_dig humanFile_dig) {
		this.basedao.delete(humanFile_dig, "deleteHumanFile_dig");
		return humanFile_dig;
	}

}
