<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>
	P{
		color:#00F;
	}
	th{
		height:20px;
		width:100px;
	}
	#button{
		margin-left:300px;
	}
</style>
<p>您正在做的业务是：人力资源--薪酬标准管理--薪酬发放查询</p>
</br>
   <label>请输入薪酬标准编号</label>
	<input type="text" style="width:100px;" value=""/>
	<label>请输入关键字</label>
	<input type="text" style="width:100px;" value=""/>
    <label>请输入发放时间</label>
    <input type="text" style="width:100px;" value=""/>
	<label>至</label>
	<input type="text" style="width:100px;" value=""/>
    <label>(YYYY-MM-DD)</label>
	<input  type="button" value="查询" />
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
		                	return '<a href="javascript:updateGoodState('+row.s_id+')">查看发放明细</a>'
		}}					
			]]
		});   
    
	   var id1;
		//审核商家状态得到选中的id
		function updateGoodState(id){
				id1=id;	
		}
</script>
</br>
</br>
</br>
</br>
</br>
</br>
<div id="finddetials">发放明细：</div>
<script>
		$('#finddetials').datagrid({
			url:'../admin.action',
			queryParams:{op:'findByPage'},
			pagination:true,   //显示分页工具栏
			pageSize:1,      //初始化显示页数
			pageList:[1,5,10],   //每页显示的条数
			columns:[[
			         {field:'a_id',title:'序号',width:50},
			         {field:'a_name',title:'档案编号',width:100},
			         {field:'a_mark',title:'姓名',width:100},
					 {field:'a_mark',title:'基本工资',width:100},
					 {field:'a_mark',title:'交通补贴',width:100},
					 {field:'a_mark',title:'通讯补贴',width:100},
					 {field:'a_mark',title:'浮动工资',width:100},
					 {field:'a_mark',title:'常规',width:100},
					 {field:'a_mark',title:'午餐补贴',width:100},
					 {field:'a_mark',title:'交通补助',width:100},
					 {field:'a_mark',title:'车补',width:100},
					 {field:'a_mark',title:'奖励金额',width:100},
					 {field:'a_mark',title:'销售绩效金额',width:100},
					 {field:'a_mark',title:'应扣金额',width:100},
			]]
		});  
</script>