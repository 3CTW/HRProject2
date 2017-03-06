package com.yc.biz;

import java.util.List;

import com.yc.bean.Users;

public interface usersBiz {

	public List<Users> getAllUsers();
	public Users save(Users users);
	public Users update(Users users);
	public Users get(int u_id);
	public Users add(Users users);
	public Users delete(Users users);
	

}
