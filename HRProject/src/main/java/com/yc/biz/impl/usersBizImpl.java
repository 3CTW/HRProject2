package com.yc.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;


import com.yc.bean.Users;
import com.yc.biz.usersBiz;
import com.yc.dao.BaseDao;
@Service
public class usersBizImpl implements usersBiz {
	/*创建新表 "user"。                                                                               */
/* "user" : 用户表                                                                               */
/* 	"user_id" : 主键，自动增长列                                                                      */
/* 	"user_name" : 用户名                                                                         */
/* 	"user_true_name" : 真实姓名                                                                   */
	
/* 	"user_password" : 密码  */
	private BaseDao basedao;
	
	@Resource(name="baseDaoMybatisImpl")
	public void setBasedao(BaseDao basedao) {
		this.basedao = basedao;
	}
	/// @Repository(name="usersBizImpl")
	
	@Override
	public List<Users> getAllUsers() {
		List<Users> list=this.basedao.findAll(new Users(), "getAllUsers");
		return list;
	}
	@Override
	public Users save(Users users) {
		this.basedao.add(users, "saveUsers");
		return users;
	}

	@Override
	public Users update(Users users) {
		this.basedao.add(users, "updateUsers");
		return users;
	}
	@Override
	public Users add(Users users) {
		this.basedao.add(users, "addUsers");
		return users;
	}
	@Override
	public Users delete(Users users) {
		this.basedao.delete(users, "deleteUsers");
		return users;
	}


	@Override
	public Users get(int u_id) {
		Users users=new Users();
		users.setU_id(u_id);
		List<Users> list=this.basedao.findAll(users, "getUers");
		return list !=null && list.size()>0 ?list.get(0):null;
	}


	
}
