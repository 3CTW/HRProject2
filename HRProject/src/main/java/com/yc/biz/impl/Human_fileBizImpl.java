package com.yc.biz.impl;

import java.util.List;

import javax.annotation.Resource;


import com.yc.bean.Config_public_char;
import com.yc.bean.Human_file;
import com.yc.biz.Human_fileBiz;
import com.yc.dao.BaseDao;

public class Human_fileBizImpl implements Human_fileBiz{
	private BaseDao basedao;
	@Resource(name="baseDaoMybatisImpl")
	public void setBasedao(BaseDao basedao) {
		this.basedao = basedao;
	}
	@Override
	public List<Human_file> getAllHuman_file() {
		List<Human_file> list=this.basedao.findAll(new Human_file(), "getAllHuman_file");
		return list;
	}
	@Override
	public Human_file save(Human_file human_file) {
		this.basedao.add(human_file, "saveHuman_file");
		return human_file;
	}

	@Override
	public Human_file update(Human_file human_file) {
		this.basedao.add(human_file, "updateHumanFile_dig");
		return human_file;
	}
	@Override
	public Human_file delete(Human_file human_file) {
		this.basedao.delete(human_file, "deleteHuman_file");
		return human_file;
	}
	@Override
	public List<Config_public_char> getAllConfig_public_chars() {
		List<Config_public_char> list=this.basedao.findAll(new Config_public_char(), "getAllCategories");
		return list;
	}
}
