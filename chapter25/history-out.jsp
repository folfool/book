<%@page contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="../header.html" %>


<div id="container">

<header>
<h1 id="logo"><a href="index.jsp"><img src="../images/logo.png" alt="FUKUNOSUSHI COMPANY"></a></h1>
</header>


<%@include file="menu.jsp" %>


<section class="box1">

<c:set var="total" value="0"/>
<c:set var="BeforeDate" value=""/>
<c:set var="num" value="0"/>

<% if(request.getAttribute("error") != null){ %>
<p>ログインしてください。</p>
<% }else if(request.getAttribute("history") == null){ %>
<p>購入履歴が存在しません。</p>
<% }else{ %>
<table style="border-collapse:separate;border-spacing:10px;">
<c:forEach var="item" items="${history}">
<c:if test="${beforeDate != item.dateTimeString}">
<c:if test="${num != 0}">
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
<tr><td colspan="6"><hr></td><tr>
</c:if>
<c:set var="num" value="1"/>

<tr><td colspan="6">${item.dateTimeString}<c:set var="total" value="${0}"/></td></tr>
</c:if>
<tr>
<td>商品${item.product.id}</td>
<td><img src="../images/product/${item.product.id}.jpg" height="96"></td>
<td>${item.product.name}</td>
<td align="right">${item.product.price}円</td>
<td align="right">${item.count}個</td>
<td>
<c:set var="total" value="${total + item.product.price*item.count}"/>
</td>
</tr>
<c:if test="${beforeDate ne item.dateTimeString}">

</c:if>
<tr><td colspan="6"><c:set var="beforeDate" value="${item.dateTimeString}"/></td></tr>
</c:forEach>
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
<% } %>

</section>


<%@include file="../footer.html"%>