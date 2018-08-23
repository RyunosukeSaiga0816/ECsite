<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
		<meta http-equiv="Content-Style-Type" content="text/css"/>
		<meta http-equiv="Content-Script-Type" content="text/javascript"/>
		<meta http-equiv="imagetoolbar" content="no"/>
		<meta name="description" content=""/>
		<meta name="keywords" content=""/>
		<title>BuyItem画面</title>

		<style type="text/css">
		/*========TAG LAYOUT========*/
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

			/*========ID LAYOUT========*/
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
			.submit_botton{
				text-align:center;
				padding-right:100px;
			}
		</style>
	</head>
	<body>
		<div id="header">
			<div id="pr">
			購入画面
			</div>
		</div>
		<div id="main">
			<div id="top">
				<p>BuyItem</p>
			</div>
			<div>
				<s:form action="BuyItemAction">
					<table>
						<tr>
							<td>
								<span>商品名</span>
							</td>
							<td>
								<s:property value="session.buyItem_name"/><br>
							</td>
						</tr>
						<tr>
							<td>
								<span>値段</span>
							</td>
							<td>
								<s:property value="session.buyItem_price"/>
								<span>円</span>
							</td>
						</tr>
						<tr>
							<td>
								<span>購入個数</span>
							</td>
							<td>
								<select name="stock">
									<option value="1" selected="selected">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
								</select>
							</td>
						</tr>
						<tr>
							<td>
								<span>支払い方法</span>
							</td>
							<td>
								<input type="radio" name="pay" value="1" checked="checked">現金払い
								<input type="radio" name="pay" value="2">クレジットカード
								<input type="radio" name="pay" value="3">コンビニ払い
							</td>
						</tr>
						<tr>
							<td>
								<div class="submit_botton">
								<s:submit value="購入" class="botton"/>
								</div>
							</td>
						</tr>
					</table>
				</s:form>
				<div>
					<p>前画面に戻る場合は<a href='<s:url action="GoHomeAction"/>'>こちら</a></p>
					<p>マイページは<a href='<s:url action="MyPageAction"/>'>こちら</a></p>
				</div>
			</div>
		</div>
		<div id="footer">
			<div id="pr">
			website
			</div>
		</div>
	</body>
</html>