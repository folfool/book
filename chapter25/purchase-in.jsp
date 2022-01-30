<%@page contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../header.html" %>


<div id="container">

<header>
<h1 id="logo"><a href="index.jsp"><img src="../images/logo.png" alt="FUKUNOSUSHI COMPANY"></a></h1>
</header>


<%@include file="menu.jsp" %>


<p>現在、カートの中には${cart.size() }種類の商品があります。</p>
<p>購入処理を続けます。</p>
<hr>

<table style="border-collapse:separate;border-spacing:10px;">
<c:forEach var="item" items="${cart }">
	<tr>
	<td>商品${item.product.id }</td>
	<td><img src="../images/product/${item.product.id }.jpg" height="96"></td>
	<td>${item.product.name }</td>
	<td>${item.product.price }円</td>
	<td>${item.count}個</td>
	</tr>
</c:forEach>
</table>
<hr>

<form action="Purchase.action" method="post">
<p>入力してください。</p>
<p>お名前　<input type="text" name="name"></p>
<p>ご住所　<input type="text" name="address"></p>
<p><input type="submit" value="購入を確定"></p>
</form>


<%@include file="../footer.html"%>