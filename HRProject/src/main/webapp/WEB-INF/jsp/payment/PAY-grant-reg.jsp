<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>
	P{
		color:#00F;
	}
    
</style>
<p>您正在做的业务是：人力资源--薪酬发放管理--薪酬发放登记</p>
</br>
上次发薪时间：
<table id="show_admin"></table>
	<script>
		$('#show_admin').datagrid({
			url:'../admin.action',
			queryParams:{op:'findByPage'},
			pagination:true,   //显示分页工具栏
			pageSize:1,      //初始化显示页数
			pageList:[1,5,10],   //每页显示的条数
			columns:[[
			         {field:'a_id',title:'序号',width:100},
			         {field:'a_name',title:'I级机构名称',width:100},
			         {field:'a_mark',title:'II级机构名称',width:100},
					 {field:'a_mark',title:'人数',width:100},
					 {field:'a_mark',title:'基本薪酬总额',width:100},
					 {field:'a_mark',title:'登记',width:100 ,formatter:function(value,row,index){
		                	return '<a class="easyui-linkbutton" href="PAY-grant-detials.html" data-options="fit:true,plain:true">审核商家状态</a>'}
					 }
			]]
		});   
    	
//linkbutton添加点击事件
$('a').click(function(){
	var href=$(this).attr('href');
	$('#show_admin').panel('refresh',href);
	return false;	
});
</script>