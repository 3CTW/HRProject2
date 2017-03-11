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
	th{
		height:20px;
		width:100px;
	}
	#button{
		margin-left:300px;
	}
	#change{
		margin-left:930px;
	}
</style>	
    <p>您正在做的业务是：人力资源--人力资源档案管理--人力资源档案变更</br></p>
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
    <input id="change" type="button" value="更改档案" />
    </br>
    </br>
<table id="tt" style="width:800px;height:400px" border="1" bordercolor="#0099FF"
			title="DataGrid - CardView" singleSelect="true" fitColumns="true" remoteSort="false"
			url="datagrid8_getdata.php" pagination="true" sortOrder="desc" sortName="itemid">
		<thead>
			<tr>
				<th field="I级机构"  sortable="true">I级机构</th>
				<th><select style="width:100px;"><option>公司</option> </select></th>
				<th field="II级机构"  sortable="true">II级机构</th>
				<th><select style="width:100px;"><option>部门</option> </select></th>
                <th field="III级机构" sortable="true">III级机构</th>
                <th colspan="2"><select style="width:200px;"><option>职位</option> </select></th>
               <th colspan="1" rowspan="5" field="status" width="60" sortable="true">pictrue</th>
			</tr>
            <tr>
				<th field="职位分类"  sortable="true">职位分类</th>
				<th><select style="width:100px;"><option >北京</option> </select></th>
				<th field="职位名称"  sortable="true">职位名称</th>
				<th><select style="width:100px;"><option >北京</option> </select></th>>
                <th field="职称" sortable="true">职称</th>
               <th colspan="2"><select style="width:200px;"><option >北京</option> </select></th>
			</tr>
            <tr>
				<th field="姓名" sortable="true">姓名</th>
				<th><input type="text" style="width:100px;" value=""/></th>
				<th field="性别"  sortable="true">性别</th>
				<th><select style="width:100px;"><option >性别</option> </select></th>>
                <th field="EMAIL"  sortable="true">EMAIL</th>
                <th colspan="2"><input type="text" style="width:200px;" value=""/></th>
			</tr>
            <tr>
				<th field="电话"  sortable="true">电话</th>
				<th><input type="text" style="width:100px;" value=""/></th>
				<th field="QQ"  sortable="true">QQ</th>
				<th><input type="text" style="width:100px;" value=""/></th>
                <th field="手机"  sortable="true">手机</th>
                <th colspan="2"><input type="text" style="width:200px;" value=""/></th>
			</tr>
            <tr>
				<th field="住址" width= sortable="true">住址</th>
				<th colspan="3"><input type="text" style="width:300px;" value=""/></th>
                <th field="邮编"  sortable="true">邮编</th>
                <th colspan="2"><input type="text" style="width:200px;" value=""/></th>
			</tr><tr>
				<th field="国籍"  sortable="true">国籍</th>
				<th><select style="width:100px;"><option >中国</option> </select></th>
				<th field="出生地"  sortable="true">出生地</th>
				<th><input type="text" style="width:100px;" value=""/></th>
                <th field="生日"  sortable="true">生日</th>
				<th><input type="text" style="width:100px;" value=""/></th>
                <th field="民族"  sortable="true">民族</th>
				<th><select style="width:100px;"><option >汉</option> </select></th>
			</tr><tr>
				<th field="宗教信仰"  sortable="true">宗教信仰</th>
				<th><select style="width:100px;"><option ></option> </select></th>
				<th field="政治面貌"  sortable="true">政治面貌</th>
				<th><select style="width:100px;"><option ></option> </select></th>
				<th field="身份证号码"  sortable="true">身份证号码</th>
				<th><input type="text" style="width:100px;" value=""/></th>
                <th field="社会保障号码号码"  sortable="true">身份证号码</th>
				<th><input type="text" style="width:100px;" value=""/></th>
			</tr><tr>
				<th field="年龄"  sortable="true">年龄</th>
				<th><input type="text" style="width:100px;" value=""/></th>
				<th field="学历"  sortable="true">学历</th>
				<th><input type="text" style="width:100px;" value=""/></th>
				<th field="教育年限"  sortable="true">教育年限</th>
				<th><input type="text" style="width:100px;" value=""/></th>
                <th field="学历专业"  sortable="true">学历专业</th>
				<th><input type="text" style="width:100px;" value=""/></th>
			</tr><tr>
				<th field="薪酬标准"  sortable="true">薪酬标准</th>
				<th><select style="width:100px;"><option ></option> </select></th>
				<th field="开户行"  sortable="true">开户行</th>
				<th><input type="text" style="width:100px;" value=""/></th>
				<th field="账号"  sortable="true">账号</th>
				<th><input type="text" style="width:100px;" value=""/></th>
                <th field="登记人"  sortable="true">登记人</th>
				<th><input type="text" style="width:100px;" value=""/></th>
			</tr><tr>
				<th field="建档时间"  sortable="true">建档时间</th>
				<th><input type="text" style="width:100px;" value=""/></th>
				<th field="特长"  sortable="true">特长</th>
				<th><select style="width:100px;"><option ></option> </select></th>
				<th field="爱好"  sortable="true">爱好</th>
				<th><select style="width:100px;"><option ></option> </select></th>
                <th field=""  sortable="true"></th>
                <th field=""  sortable="true"></th>
			</tr>
            <tr>
				<th style="height:60px;" field="个人履历"  sortable="true">个人履历</th>
				<th style="height:60px;"colspan="7"><input type="text" style="width:700px; height:60px;" value=""/></th>
			</tr><tr>
				<th style="height:60px;" field="家庭关系信息"  sortable="true">家庭关系信息</th>
				<th style="height:60px;"colspan="7"><input type="text" style="width:700px; height:60px;" value=""/></th>
			</tr><tr>
				<th style="height:60px;" field="备注"  sortable="true">备注</th>
				<th style="height:60px;" colspan="7"><input type="text" style="width:700px; height:60px;" value=""/></th>
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