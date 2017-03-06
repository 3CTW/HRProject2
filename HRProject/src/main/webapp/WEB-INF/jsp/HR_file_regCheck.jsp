<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isELIgnored="false" %>

<%
	String path=request.getContextPath();//douban
	String basePath =request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
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
					 {field:'a_mark',title:'职位名称',width:100},
					{field:'cz',title:'复核',width:150,formatter:function(value,row,index){
		                	return '<a href="javascript:updateGoodState('+row.s_id+')">复核</a>'
		                }}
			]]
		});
		
		
    var id1;
		//审核商家状态得到选中的id
		function updateGoodState(id){
				id1=id;	
		}
    	$('.updateState').click(function(){
			var audit_state=$('input[name="shen"]:checked').val();	
				//使用jquery中的ajax请求来提交数据
				$.post('../seller.action',{audit_state:audit_state,id:id1,op:'updateState'},		function(data){
						if('success'==data){
							alert("修改成功");
							$('#show_seller').datagrid('reload');
						}else{
							alert("修改失败");
						}
				},'text');	
		});
	</script>
 <div id="all">
		<div>修改审核状态：
		<input type="radio" name="shen" checked value="1"/>复核通过&nbsp;&nbsp;
		<input type="radio" name="shen" value="0"/>复核未通过&nbsp;&nbsp;
		<a class="easyui-linkbutton updateState" style="width:120px;">修改复核状态</a><br/><br/>
		</div>