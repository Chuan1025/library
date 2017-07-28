<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../js_css/VerticalMenu.css" rel="stylesheet" />
    <link href="http://www.jq22.com/jquery/font-awesome.4.6.0.css" rel="stylesheet" media="screen">
    <script type="text/javascript" src="http://www.jq22.com/jquery/1.9.1/jquery.min.js"></script>
    <script type="text/javascript" src="../js_css/VerticalMenuJs.js"></script>
	<script type="text/javascript">
	$(document).ready(function () {
    $(".VerticalMenu>div>div:first-child").click(function () {
        $xz = $(".VerticalMenu>div>div:first-child");
        $($xz).not(this).children("i.fa-angle-right").css({ "transform": "rotate(0deg)", "color": "#000000" }).attr("leng", "");
        if ($(this).children("i.fa-angle-right").attr("leng") != "s") {
            $(this).children("i.fa-angle-right").attr("leng", "s");
            $(this).children("i.fa-angle-right").css({ "transform": "rotate(90deg)", "color": "#f9579e" });
        } else {
            $(this).children("i.fa-angle-right").attr("leng", "");
            $(this).children("i.fa-angle-right").css({ "transform": "rotate(0deg)", "color": "#000000" });
        }
        $($xz).not($(this)).siblings("[name='xz']").stop().slideUp(400);
        $(this).siblings("[name='xz']").slideToggle(400);

    });
    $VerticalMenu_scdj = null;
    $(".VerticalMenu>div>div:last-child>div").click(function () {
        $($VerticalMenu_scdj).css("background-color", "white");
        $(this).css("background-color","#00ff90");
        $VerticalMenu_scdj=$(this);
    });
});
	</script>
<style type="text/css">
.VerticalMenu {
  height: 100%;
  width: 200px;
  cursor: pointer;
}
.VerticalMenu > div {
  width: 200px;
  float: left;
}
.VerticalMenu > div > div:first-child {
  text-align: center;
  height: 40px;
  background-color: white;
  line-height: 40px;
  padding-right: 10px;
  border-bottom: 1px solid  #cdb0b0;
  transition: background-color 0.4s linear;
}
.VerticalMenu > div > div:first-child:hover {
  background-color: #4cff00;
}
.VerticalMenu > div > div:first-child > i:last-child {
  line-height: 40px;
  float: right;
  transform: rotate(0deg);
  transition: transform 0.4s linear;
}
.VerticalMenu > div > div:last-child {
  width: 200px;
  display: none;
}
.VerticalMenu > div > div:last-child > div {
  background-color: white;
  transition: background-color 0.1s linear;
  text-align: center;
  line-height: 40px;
  border-bottom: 1px solid #e6e6e6;
}
.VerticalMenu > div > div:last-child > div:hover {
  background-color: #00ff90!important;
}
.VerticalMenu > div:first-child > div:first-child {
  border-top-left-radius: 5px;
  border-top-right-radius: 5px;
}
.VerticalMenu > div:last-child > div:first-child {
  border-bottom-left-radius: 5px;
  border-bottom-right-radius: 5px;
}
.VerticalMenu > div:last-child::after {
  display: block;
  clear: both;
}
.admin{text-decoration:none}
#search{text-decoration:none}
#reader{text-decoration:none}

</style>

</head>
<body>
    <div >
        <div class="VerticalMenu">
            <div>
                <div><span>系统管理</span><i class="fa fa-angle-right fa-lg"></i></div>
                <div name="xz">
                  <div>
                        <div><span><a href="managerBook" target="rightframe" class="admin">图书管理</a></span></div>
                    </div>
                    <div>
                        <div><span><a href="bookclass" target="rightframe" class="admin">分类管理</a></span></div>
                    </div>
                    <div>
                        <div><span><a href=manageReader target="rightframe" class="admin">用户管理</a></span></div>
                    </div>
                    <div>
                        <div><span>管理员管理</span></div>
                    </div>
                </div>
            </div>
            <div>
                <div><span >图书借还</span><i class="fa fa-angle-right fa-lg"></i></div>
                <div name="xz">
                    <div>
                        <div><span><a href="searchBook" target="rightframe" id="search">借阅查询</a></span></div>
                    </div>
                    <div>
                        <div><span>图书借阅</span></div>
                    </div>
                    <div>
                        <div><span>图书归还</span></div>
                    </div>
                </div>
            </div>
            <div>
                <div><span>系统设置</span><i class="fa fa-angle-right fa-lg"></i></div>
                <div name="xz">
                    <div>
                        <div><span>系统设置</span></div>
                    </div>
                    </div>
            </div>
            <div>
                <div><span>统计分析</span><i class="fa fa-angle-right fa-lg"></i></div>
                <div name="xz">
                    <div>
                        <div><span>最受欢迎的图书</span></div>
                    </div>
                    <div>
                        <div><span>选项四</span></div>
                    </div>
                    <div>
                        <div><span>选项四</span></div>
                    </div>
                </div>
            </div>
            <div>
                <div><span>待扩展</span><i class="fa fa-angle-right fa-lg"></i></div>
                <div name="xz">
                    <div>
                        <div><span>选项五</span></div>
                    </div>
                    <div>
                        <div><span>选项五</span></div>
                    </div>
                    <div>
                        <div><span>选项五</span></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>