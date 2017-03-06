<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isELIgnored="false" %>

<%
	String path=request.getContextPath();//douban
	String basePath =request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<style>
	P{
		color:#00F;
	}
	#cc1{
		width:80px;
	}
</style>	
    <p>您正在做的业务是：人力资源--人力资源档案管理--人力资源档案查询</br></p>
<label>I级机构</label>
<input id="cc1" class="easyui-combobox"
	data-options="
			valueField:'t_id',
			textField:'t_name',
			url:'../good.action?op=findMainMenu',
			onSelect:function(rec){
				var url='../good.action?op=findByPge&t_parent='+rec.t_id;
				tid=rec.t_id;
			}
			" />
<label>II级机构</label>
<input id="cc1" class="easyui-combobox"
	data-options="
			valueField:'t_id',
			textField:'t_name',
			url:'../good.action?op=findMainMenu',
			onSelect:function(rec){
				var url='../good.action?op=findByPge&t_parent='+rec.t_id;
				tid=rec.t_id;
			}
			" />
<label>III级机构</label>
<input id="cc1" class="easyui-combobox"
	data-options="
			valueField:'t_id',
			textField:'t_name',
			url:'../good.action?op=findMainMenu',
			onSelect:function(rec){
				var url='../good.action?op=findByPge&t_parent='+rec.t_id;
				tid=rec.t_id;
			}
			" />
<label>职位分类</label>
<input id="cc1" class="easyui-combobox"
	data-options="
			valueField:'t_id',
			textField:'t_name',
			url:'../good.action?op=findMainMenu',
			onSelect:function(rec){
				var url='../good.action?op=findByPge&t_parent='+rec.t_id;
				tid=rec.t_id;
			}
			" />

<label>职位名称</label>
<input id="cc1" class="easyui-combobox"
	data-options="
			valueField:'t_id',
			textField:'t_name',
			url:'../good.action?op=findMainMenu',
			onSelect:function(rec){
				var url='../good.action?op=findByPge&t_parent='+rec.t_id;
				tid=rec.t_id;
			}
			" />
<label>建档时间</label>
<input id="cc1" class="easyui-combobox"
	data-options="
			valueField:'t_id',
			textField:'t_name',
			url:'../good.action?op=findMainMenu',
			onSelect:function(rec){
				var url='../good.action?op=findByPge&t_parent='+rec.t_id;
				tid=rec.t_id;
			}
			" />
<label>至</label>
<input id="cc1" class="easyui-combobox"
	data-options="
			valueField:'t_id',
			textField:'t_name',
			url:'../good.action?op=findMainMenu',
			onSelect:function(rec){
				var url='../good.action?op=findByPge&t_parent='+rec.t_id;
				tid=rec.t_id;
			}
			" />
<input  type="button" value="查询" />
</br>
</br>
符合条件的人力资源总数为：  例
<table id="show_admin"></table>
	<script>
		$('#show_admin').datagrid({
			url:'../admin.action',
			queryParams:{op:'findByPage'},
			pagination:true,   //显示分页工具栏
			pageSize:1,      //初始化显示页数
			pageList:[1,5,10],   //每页显示的条数
			columns:[[
			         {field:'a_id',title:'档案编号',width:100},
			         {field:'a_name',title:'姓名',width:100},
			         {field:'a_mark',title:'性别',width:100},
					 {field:'a_mark',title:'I级机构',width:100},
					 {field:'a_mark',title:'II级',width:100},
					 {field:'a_mark',title:'III级机构',width:100},
					 {field:'a_mark',title:'职位分类',width:100},
					 {field:'a_mark',title:'职位名称',width:100},
					 {field:'a_mark',title:'状态',width:100},
			]]
		});
	</script>
