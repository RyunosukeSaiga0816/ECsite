<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<meta http-equiv="Content-Style-Type" content="text/css"/>
		<meta http-equiv="Content-Script-Type" content="text/javascript"/>
		<meta http-equiv="imagetoolbar" content="no"/>
		<meta name="description" content=""/>
		<meta name="keywords" content=""/>
		<title>Home画面</title>

		<style type="text/css">
			body{
				margin:0;
				padding:0;
				line-height:1.6;
				letter-spacing:1px;
				font-family:Verdana,Helvetica,sans-serif;
				font-size:12px;
				color:#333;
				background:#fff;
			}
			table{
				text-align:center;
				margin:0 auto;
			}

			/*========ecsite LAYOUT========*/
			#top{
				width:780px;
				margin:30px auto;
				border:1px solid #333;
			}
			#header{
				width:100%;
				height:80px;
				background-color:black;
				color:white;
				text-align:center;
				line-height:80px;
			}
			#main{
				width:100%;
				height:500px;
				text-align:center;
			}
			#footer{
				width:100%;
				height:80px;
				background-color:black;
				color:white;
				text-align:center;
				line-height:80px;
				clear:both;
			}
			#text-center{
				display:inline-block;
				text-align:center;
				width: 780px;
				height: auto;
				padding-top: 70px;
				margin-top: 50px;
				margin: 0 auto;
				padding-bottom: 100px;
				background-color: #CCCCCC;
				overflow: auto;
				background:lightgray;
				border-radius:30px;
			}
		</style>
	</head>
	<body>
		<div id="header">
			<div id="pr">
			ホーム画面
			</div>
		</div>
		<div id="main">
			<div id="top">
				<p>Home</p>
			</div>
			<div id="text-center">
				<s:if test="#session.id !=null">
					<h2>ようこそ!</h2>
					<s:form action="HomeAction">
						<s:submit value="購入画面"/>
					</s:form>
					<p>ログアウトする場合は
					<a href='<s:url action="LogoutAction"/>'>こちら</a></p>
				</s:if>
				<s:if test="#session.id ==null">
					<h2>商品を購入する際にはログインをお願いします</h2>
					<s:form action="LoginAction">
						<s:submit value="ログイン"/>
					</s:form>
				</s:if>
			</div>
		</div>
		<div id="footer">
			<div id="pr">
			website
			</div>
		</div>
	</body>
</html>