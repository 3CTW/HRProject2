package com.yc.biz;

import java.util.List;

import com.yc.bean.HumanFile_dig;

public interface HumanFile_digBiz {
	public List<HumanFile_dig> getAllHumanFile_dig();
	public HumanFile_dig save(HumanFile_dig humanFile_dig);
	public HumanFile_dig update(HumanFile_dig humanFile_dig);
	public HumanFile_dig delete(HumanFile_dig humanFile_dig);

}
