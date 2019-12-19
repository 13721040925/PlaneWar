<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<link rel="icon" href="image/logo.png" type="image/x-icon"> 
		<link rel="shortcut icon" href="image/logo.png" type="image/x-icon">
		<title>冰山飞机大战</title>
		<link rel="stylesheet" href="css/reset.css" />
	</head>
	<body>
		<!--
        	作者：光年以外 <987153776@qq.com>
        	时间：2017-03-13
        	游戏名：飞机大战
        	描述：js用的es5语法，兼容大部分浏览器
        	玩法：	1、支持上下左右键控制飞机移动，空格键暂停/继续
        			2、支持飞机跟随鼠标移动
        			3、支持移动端
        -->
		<canvas id="canvas"></canvas>
		<script type="text/javascript" src="system/Tools.js" ></script>
		<script type="text/javascript" src="property/Frame.js" ></script>
		<script type="text/javascript" src="js/BackGround.js" ></script>
		<script type="text/javascript" src="js/Bomb.js" ></script>
		<script type="text/javascript" src="js/MyPlane.js" ></script>
		<script type="text/javascript" src="js/Bullet.js" ></script>
		<script type="text/javascript" src="js/EnemyPlane.js" ></script>
		<script type="text/javascript" src="js/GameStart.js" ></script>
		<script>
			window.onload = function(){
				//禁用移动端浏览器页面的上下拖拽
				document.body.addEventListener('touchmove',function(e){e.preventDefault()},false);
				//开始游戏
				new GameStart();
			}
		</script>
	</body>
</html>
