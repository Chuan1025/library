<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>图书查询界面</title>
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
.tableForm-inner-th{
height:45px;
border-top-color: inherit;
border-right-color: inherit;
border-bottom-color: inherit;
border-left-color: inherit;
border: 1px solid #e0e0e0;
padding-left: 3px;
}
.tableForm-inner-td{
height:45px;
border: 1px solid #e0e0e0;
padding-left: 3px;
}
.submit{
background-color:#3072AB ;width: 54px; height:34px;
margin-left: 20px;
}
.bookid{
width:224px;height:34px;
}
.bookName{
width:224px;height:34px;
}
.update{background-color: #e38d13}
.delete{background-color: #b92c28}
</style>
</head>
<body>
<div class="top">
<div >
<form action="<%=request.getContextPath()%>/user?method=managerBook"  method="post">
<div class="panel">
 <div >
 <div class="bootstrap-admin-box-title">查询</div>
</div>
<div class="bootstrap-admin-panel-content" >
<label>图书编号</label>&nbsp;&nbsp;&nbsp; <input type="text" name="bookId" class="bookid">
<label>图书名称</label>&nbsp;&nbsp;&nbsp;<input type="text" name="bookName" class="bookName">
<input type="submit" value="查询"  class="submit">
</div>
</div>
</form></div>
<br>
<div  class="table-form-outer">
<table  cellspacing="0" cellpadding="0" width="100%">
<thead>
<tr >
<th class="tableForm-inner-th">编号</th>
<th class="tableForm-inner-th">书名</th>
<th class="tableForm-inner-th">类别</th>
<th class="tableForm-inner-th">出版社</th>
<th class="tableForm-inner-th">作者</th>
<th class="tableForm-inner-th">价格</th>
<th class="tableForm-inner-th">操作</th>
</tr></thead>

<c:forEach items="${booklist}" var="f" step="1"  varStatus="i" >
 <tbody><tr align="center">
<td    class="tableForm-inner-td">${f.book_id}</td>
<td   class="tableForm-inner-td">${f.book_name}</td>
<td   class="tableForm-inner-td">${f.book_class}</td>
<td   class="tableForm-inner-td">${f.book_publish}</td>
<td    class="tableForm-inner-td">${f.book_author}</td>
<td   class="tableForm-inner-td">${f.book_price}</td>
<td    class="tableForm-inner-td"><button class="update">修改</button>&nbsp;<button class="delete">删除</button></td>

</tr></tbody>
</c:forEach>
</table></div></div>
</body>
</html>