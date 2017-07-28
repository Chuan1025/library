<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户管理</title>
<style type="text/css">
.top{
width: 80%;
height: 100%;
}
.panel{
width: 100%;
border: 1px solid #e0e0e0;
}
.bootstrap-admin-box-title{
background-color: #EEEEEE;
height: 30px;
padding-left: 20px;
padding-top: 10px;
}
.bootstrap-admin-panel-content{
height: 100px;
padding-top: 20px;
padding-left: 60px;
}
.table-form-outer{
border: 1px solid #e0e0e0;
}
.tableForm-inner-td{
height:45px;
border: 1px solid #e0e0e0;
}
.tableForm-inner-th{
height:45px;
border-top-color: inherit;
border-right-color: inherit;
border-bottom-color: inherit;
border-left-color: inherit;
border: 1px solid #e0e0e0;
}
.update{background-color: #e38d13}
.delete{background-color: #b92c28}
.submit{background-color:#3072AB ;width: 54px; height:34px;
margin-left: 20px;
}
.add{background-color: #3072AB;width: 54px; height:34px;
margin-left: 10px;}
.reader{width:224px;height:34px;}
</style>
</head>
<body>
<br>
<div class="top">
<div >
<form action="<%=request.getContextPath()%>/user?method=selectReader"  method="post" >
<div class="panel">
 <div >
 <div class="bootstrap-admin-box-title">查询</div>
</div>
<div class="bootstrap-admin-panel-content" >
<label>读者编号</label><input type="text" name="readerID"  class="reader">
<label>读者姓名</label><input type="text" name="readerName" class="reader">
<input type="submit" value="查询" class="submit">&nbsp;&nbsp;&nbsp;<button class="add">添加</button>
</div>
</div>
</form></div>
<br>
<div  class="table-form-outer">
<table  cellspacing="0" cellpadding="0"  width="100%">
<thead>
<tr align="center">
<th class="tableForm-inner-th">编号</th>
<th class="tableForm-inner-th">姓名</th>
<th class="tableForm-inner-th">所在学院</th>
<th class="tableForm-inner-th">电话</th>
<th class="tableForm-inner-th">登录密码</th>
<th class="tableForm-inner-th">操作</th>
</tr></thead>
<tbody>
<c:forEach items="${readerList}" var="f" step="1"  varStatus="i" >
<tr>
<td   class="tableForm-inner-td">${f.reader_id}</td>
<td   class="tableForm-inner-td">${f.reader_name}</td>
<td   class="tableForm-inner-td">${f.reader_college}</td>
<td   class="tableForm-inner-td">${f.reader_phone}</td>
<td   class="tableForm-inner-td">${f.reader_pwd}</td>
<td   class="tableForm-inner-td"><button class="update">修改</button>&nbsp;<button class="delete">删除</button></td>

</tr>
</c:forEach></tbody>
</table></div></div>


</body>
</html>