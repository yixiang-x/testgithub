<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>主页</title>
<!--   <script type="text/javascript" src="/day5_test/js/jquery-3.3.1.min.js"></script> -->
  <link rel="stylesheet" type="text/css" href="../res/layui/css/layui.css">
  <script type="text/javascript" src="../res/layui/layui.js"></script>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  <div class="layui-header">
    <div class="layui-logo">layui 后台布局</div>
    <!-- 头部区域（可配合layui已有的水平导航） -->
<!--     <ul class="layui-nav layui-layout-left"> -->
<!--       <li class="layui-nav-item"><a href="">控制台</a></li> -->
<!--       <li class="layui-nav-item"><a href="">商品管理</a></li> -->
<!--       <li class="layui-nav-item"><a href="">用户</a></li> -->
<!--       <li class="layui-nav-item"> -->
<!--         <a href="javascript:;">其它系统</a> -->
<!--         <dl class="layui-nav-child"> -->
<!--           <dd><a href="">邮件管理</a></dd> -->
<!--           <dd><a href="">消息管理</a></dd> -->
<!--           <dd><a href="">授权管理</a></dd> -->
<!--         </dl> -->
<!--       </li> -->
<!--     </ul> -->
    <ul class="layui-nav layui-layout-right">
      <li class="layui-nav-item">
        <a href="javascript:;">
          <img src="http://t.cn/RCzsdCq" class="layui-nav-img">
          尊敬的：<%=session.getAttribute("code") %>
        </a>
        <dl class="layui-nav-child">
          <dd><a onclick="modify()" class="layui-btn layui-btn-primary">一个可跳转的按钮</a></dd>
          <dd><a class="layui-btn layui-btn-primary">安全设置</a></dd>
        </dl>
      </li>
      <li class="layui-nav-item"><a href="/day5_test/test/login.jsp">out</a></li>
    </ul>
  </div>
  
  <div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
        <li class="layui-nav-item layui-nav-itemed">
          <a class="" href="javascript:;">所有商品</a>
          <dl class="layui-nav-child">
            <dd><a href="javascript:openUrl('http://www.baidu.com');">列表一</a></dd>
            <dd><a href="javascript:openUrl('./first.jsp');">列表二</a></dd>
            <dd><a href="javascript:openUrl('./testlogin.jsp');">列表三</a></dd>
            <dd><a href="">超链接</a></dd>
          </dl>
        </li>
<!--         <li class="layui-nav-item"> -->
<!--           <a href="javascript:;">解决方案</a> -->
<!--           <dl class="layui-nav-child"> -->
<!--             <dd><a href="javascript:;">列表一</a></dd> -->
<!--             <dd><a href="javascript:;">列表二</a></dd> -->
<!--             <dd><a href="">超链接</a></dd> -->
<!--           </dl> -->
<!--         </li> -->
<!--         <li class="layui-nav-item"><a href="">云市场</a></li> -->
<!--         <li class="layui-nav-item"><a href="">发布商品</a></li> -->
      </ul>
    </div>
  </div>
  
  <div class="layui-body">
    <!-- 内容主体区域 -->
    <iframe name="rightframe" width="99%" height="98%" src="./login.jsp"></iframe>
<!--     <div style="padding: 15px;">内容主体区域</div> -->
  </div>
  
  <div class="layui-footer">
    <!-- 底部固定区域 -->
    © yixiang_x@163.com - 底部固定区域
  </div>
</div>
<script src="../src/layui.js"></script>
<script>
//JavaScript代码区域
function openUrl(url){
	window.open(url,"rightframe");
}
layui.use('element', function(){
  var element = layui.element;
  
});
function modify(){
	alert(111);s
	layer.msg('hello'); 
}
</script>
</body>
</html>