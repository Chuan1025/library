<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 引入jQuery -->
 <script type="text/javascript" src="http://www.jq22.com/jquery/1.9.1/jquery.min.js"></script>
  <script type="text/javascript" src="../js_css/VerticalMenuJs.js"></script>
<title>图书分类管理</title>
<style type="text/css">
.even{background: #F9F9F9;}
.old{background: #FFFFEE;}
</style>
<script type="text/javascript">
$(function(){
$("tbody>tr:odd").addClass("odd");
$("tbody>tr:even").addClass("even");
});

$(document).ready(function(){
$("#submitForm").submit();
});

$("#submit").click(function(){  
            $("#submitForm").submit();  
        });

</script>
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
.classname{font:bold;}
.bookclassName{width:284px;height:34px;}
</style>
</head>

<body>
<div class="top">
<div >
<form action="<%=request.getContextPath()%>/user?method=selectBookClass"  method="post" id="submitForm">

<div class="panel">
 <div >
 <div class="bootstrap-admin-box-title">查询</div>
</div>
<div class="bootstrap-admin-panel-content" >
<label class="classname">分类名称</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="bookclassName" class="bookclassName">
<button   class="submit" id="submit">查询</button>&nbsp;&nbsp;&nbsp;<button class="add">添加</button>
</div>
</div>
</form></div>
<br>
<div  class="table-form-outer">
<table  id="data_list" class="table table-striped table-bordered" cellspacing="0" width="100%">
<thead>
<tr >
<th class="tableForm-inner-th" >序号</th>
<th class="tableForm-inner-th">分类名称</th>
<th class="tableForm-inner-th">操作</th>
</tr>
</thead>
<tbody>
<c:forEach items="${classlist}" var="f" step="1"  varStatus="i" >
<tr align="center">
<td  class="tableForm-inner-td">${i.index+1}</td>
<td  class="tableForm-inner-td">${f.book_class}</td>
<td  class="tableForm-inner-td"><button class="update">修改</button>&nbsp;<button class="delete">删除</button></td>

</tr>
</c:forEach>
</tbody>
</table></div></div>
</body>
</html>