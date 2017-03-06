package com.yc.biz;

import java.util.List;

import com.yc.bean.Config_public_char;
import com.yc.bean.Human_file;

public interface Human_fileBiz {

	
	public List<Config_public_char> getAllConfig_public_chars();
	public List<Human_file> getAllHuman_file();

	public Human_file save(Human_file human_file);

	public Human_file update(Human_file human_file);

	public Human_file delete(Human_file human_file);

}
