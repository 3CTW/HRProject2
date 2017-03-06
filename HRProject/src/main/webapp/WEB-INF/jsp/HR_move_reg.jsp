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
	th{
		height:20px;
		width:100px;
	}
	#cc1{
		width:80px;
	}
	#button{
		margin-left:300px;
	}
	#change{
		margin-left:930px;
	}
</style>	
    <p>您正在做的业务是：人力资源--人力资源管理--人力资源调动登记</p>
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
<table id="show_admin"></table>
	<script>
		$('#show_admin').datagrid({
			url:'../admin.action',
			queryParams:{op:'findByPage'},
			pagination:true,   //显示分页工具栏
			pageSize:1,      //初始化显示页数
			pageList:[1,5,10],   //每页显示的条数
			columns:[[
					 {field:'ck',checkbox:true,width:80},
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
    <input id="change" type="button" value="调动登记" />
    </br>
    </br>
	
	<table id="tt" style="width:900px;height:120px" border="1" bordercolor="#0099FF"
			title="DataGrid - CardView" singleSelect="true" fitColumns="true" remoteSort="false"
			url="datagrid8_getdata.php" pagination="true" sortOrder="desc" sortName="itemid">
		<thead>
        <tr>
        	<th field="档案编号"  sortable="true">档案编号</th>
            <th colspan="7"><input type="text" style="width:800px; value=""/></th>
        </tr>
		<tr>
				<th field="原I机构"  sortable="true">原I机构</th>
				<th><input type="text" style="width:120px;" value=""/></th>
				<th field="原II机构"  sortable="true">原II机构</th>
				<th><input type="text" style="width:120px;" value=""/></th>
                <th field="原III机构"  sortable="true">原III机构</th>
				<th><input type="text" style="width:120px;" value=""/></th>
                <th field="姓名"  sortable="true">姓名</th>
                <th><input type="text" style="width:120px;" value=""/></th>
			</tr><tr>
				<th field="原职位分类"  sortable="true">原职位分类</th>
				<th><input type="text" style="width:120px;" value=""/></th>
				<th field="原职位名称"  sortable="true">原职位名称</th>
				<th><input type="text" style="width:120px;" value=""/></th>
				<th field="原薪酬标准"  sortable="true">原薪酬标准</th>
				<th><input type="text" style="width:120px;" value=""/></th>
                <th field=""  sortable="true"></th>
				<th><input type="text" style="width:120px;" value=""/></th>
			</tr><tr>
				<th field="新I机构"  sortable="true">新I机构</th>
				<th><select style="width:120px;"><option ></option> </select></th>
				<th field="新II机构"  sortable="true">新II机构</th>
				<th><select style="width:120px;"><option ></option> </select></th>
				<th field="新III机构"  sortable="true">新III机构</th>
				<th><select style="width:120px;"><option ></option> </select></th>
                <th field=""  sortable="true"></th>
				<th><input type="text" style="width:120px;" value=""/></th>
            </tr><tr>
				<th field="新职位分类"  sortable="true">新职位分类</th>
				<th><select style="width:120px;"><option ></option> </select></th>
				<th field="新职位名称"  sortable="true">新职位名称</th>
				<th><select style="width:120px;"><option ></option> </select></th>
				<th field="新薪酬标准"  sortable="true">新薪酬标准</th>
				<th><select style="width:120px;"><option ></option> </select></th>
                <th field=""  sortable="true"></th>
				<th><input type="text" style="width:120px;" value=""/></th>
			</tr><tr>
				<th field="登记人"  sortable="true">登记人</th>
				<th><input type="text" style="width:120px;" value=""/></th>
				<th field="登记时间"  sortable="true">登记时间</th>
				<th><input type="text" style="width:120px;" value=""/></th>
				<th field=""  sortable="true"></th>
				<th><input type="text" style="width:120px;" value=""/></th>
                <th field=""  sortable="true"></th>
				<th><input type="text" style="width:120px;" value=""/></th>
            </tr><tr>
				<th style="height:60px;" field="调动原因"  sortable="true">调动原因</th>
				<th style="height:60px;"colspan="7"><input type="text" style="width:800px; height:60px;" value=""/></th>
			</tr>
		</thead>
	</table>
    <div id="button">
    <input  type="button" value="提交" />
    <input  type="button" value="清除"/>
    </div>
    </br>
    </br>
    </br>
    </br>
    </br>
    </br>
    
	