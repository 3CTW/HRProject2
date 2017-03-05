package com.yc.dao;

import java.util.List;
import java.util.Map;

public interface BaseDao<T> {
	
public List<T> findAll(T t,String sqlId);
	
	//根据条件，条件存放在map中，这也可以做分页查询
	public List<T> findAll(T t,Map map,String sqlId);
	
	public void add(T t,String sqlId);
	
	public void add(T t,Map map,String sqlId);
	
	//批量添加
	public void addMany(T t,List list,String sqlId);
	
	public void update(T t,String sqlId);
	
	public void updateMap(T t,Map map,String sqlId);
	
	//批量修改
	public void updateMany(T t,List list,String sqlId);
	
	public void delete(T t,String sqlId);
	
	public void deleteMap(T t,Map map,String sqlId);
	
	//批量删除
	public void deleteMany(T t,List list,String sqlId);
	
	//聚合函数
	public double findFunc(T t,String sqlId);
	
	public double findFunc(T t,Map map,String sqlId);
	
	
}
