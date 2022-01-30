<%@page contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../header.html" %>


<div id="container">

<header>
<h1 id="logo"><a href="index.jsp"><img src="../images/logo.png" alt="FUKUNOSUSHI COMPANY"></a></h1>
</header>


<%@include file="menu.jsp" %>


<div id="contents">

<section class="box1 bg1"> <!-- かたまり1個目 -->

<h5>検索キーワードを入力してください。
<form action="Product.action" method="post">
<input type="text" name="keyword">
<input type="submit" value="検索">
</form>
</h5>
</section>

<section class="box1"> <!-- かたまり2個目 -->

<h2><span>新鮮お寿司　＆　甘いスイ～ツ</span></h2>
<span class="option1">通販OK</span>
<p class="c">お好きな商品をお選びください♪</p>

<div class="list">

<table style="border-collapse:separate;border-spacing:10px">
<c:forEach var="product" items="${list }">

<tr>
<td>No.${product.id }</td>
<td><img src="../images/product/${product.id }.jpg" height="64"></td>
<td>${product.name }</td>
<td>${product.price}円</td>
<td>
<form action="CartAdd.action" method="post">
<select name="count" >
<c:forEach var="i" begin="1" end="10">
<option value="${i}">${i}</option>
</c:forEach>
</select>
<input type="hidden" name="id" value="${product.id }">
<input type="submit" value="カートに追加">
</form>
</td>
</tr>
</c:forEach>
</table>

</div>
</section>


<%@include file="../footer.html"%>