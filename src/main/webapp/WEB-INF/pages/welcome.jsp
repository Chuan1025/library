<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">    
<html>    
<head>    
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">    
<title>hello world</title>    
<style type="text/css">
#background{
background-image: url(../images/libraryLogin.jpg);
background-size :100%;
background-repeat:no-repeat;
}
.location{
padding:10% 20% 10% 60%;

}
#login{
  display: block;
    width: 190px\9;
    margin: 0 0 -1px;
    padding: 8px 14px;
    border: 1px solid #B6B7FA ;
}
.form-control{
width: 180px;
height: 20px;
}
.control-label{
font-weight: bold;
}
.without-padding{
 padding: 0;
}

</style>

</head>    
<body id="background" class="without-padding">  
<div class="location" >
<div id="login" >
<form  action="<%=request.getContextPath()%>/user?method=login" method="post">
 <label class="control-label" >登录名</label><br>
 <input type="text" class="form-control" name="ID"><br><br>
 <label class="control-label">密&nbsp;码</label><br>
 <input type="password" class="form-control" name="password"><br><br>
 <label class="control-label">身&nbsp;份</label><br>
 <select class="form-control" name="status">
 <option value="0">学生</option>
 <option value="1">管理员</option>
 </select><br><br>
 <input type="submit" value="登&nbsp;&nbsp;&nbsp;&nbsp;录"  >
 </form>
</div>
</div>  
</body>    
</html>    