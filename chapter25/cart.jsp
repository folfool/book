<%@page contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="../header.html" %>


<div id="container">

<header>
<h1 id="logo"><a href="index.jsp"><img src="../images/logo.png" alt="FUKUNOSUSHI COMPANY"></a></h1>
</header>


<%@include file="menu.jsp" %>


<div id="contents">

<section class="box1 bg1"> <!-- 背景薄い茶 -->

<c:set var="total" value="0"/>

<c:choose>
<c:when  test="${cart.size()>0}">
<h2><span>現在、カートの中には${cart.size()}種類の商品があります。</span></h2>
</c:when>
<c:otherwise>
<h2>カートに商品がありません。</h2>
</c:otherwise>
</c:choose>

<table style="border-collapse:separate;border-spacing:10px;">
<c:forEach var="item" items="${cart}">
<tr>
<td>No.${item.product.id}</td>
<td><img src="../images/product/${item.product.id}.jpg" height="96"></td>
<td>${item.product.name}</td>
<td align="right">${item.product.price}円</td>
<td align="right">${item.count}個</td>
<td>
<c:set var="total" value="${total + item.product.price*item.count}"/>

<p><a href="CartRemove.action?id=${item.product.id}">カートから削除</a></p>
</td>
</tr>
</c:forEach>
</section>


<tr>
<td></td>
<td></td>
<td>合計金額</td>
<td align="right">${total}円</td>
<td></td>
<td></td>
</tr>
<tr>
<td></td>
<td></td>
<td>消費税</td>
<td align="right"><fmt:formatNumber value="${total*0.08}" pattern="###"/>円</td>
<td></td>
<td></td>
</tr>
<tr>
<td></td>
<td></td>
<td colspan="2">---------------------</td>
<td></td>
<td></td>
</tr>
<tr>
<td></td>
<td></td>
<td>ご請求額</td>
<td align="right"><fmt:formatNumber value="${total+total*0.08}" pattern="###"/>円</td>
<td></td>
<td></td>
</tr>
</table>
</section>
</div>
<!--/#contents-->


<%@include file="../footer.html"%>