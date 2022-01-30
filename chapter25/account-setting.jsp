<%@page contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../header.html" %>


<div id="container">

<header>
<h1 id="logo"><a href="index.jsp"><img src="../images/logo.png" alt="FUKUNOSUSHI COMPANY"></a></h1>
</header>


<%@include file="menu.jsp" %>


<section class="box1">

<p>${customer.login}さんの設定を編集できます。</p>
<p><a href="update-password.jsp">パスワード変更</a></p>
<p><a href="History.action">購入履歴</a></p>

</section>


<%@include file="../footer.html"%>