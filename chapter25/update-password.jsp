<%@page contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../header.html" %>


<div id="container">

<header>
<h1 id="logo"><a href="index.jsp"><img src="../images/logo.png" alt="FUKUNOSUSHI COMPANY"></a></h1>
</header>


<%@include file="menu.jsp" %>


<section class="box1">

<form action="UpdatePassword.action" method="post">
<table>
<tr>
<td>パスワード変更</td>
<td>
<%if(request.getAttribute("error")!=null){%>
<font color="red">入力に誤りがあります。再度入力して下さい。</font>
<% } %>
</td>
</tr>
<tr>
<td>ログイン名</td>
<td>${customer.login}</td>
</tr>
<tr>
<td>パスワード</td>
<td><input type="password" name="password"></td>
</tr>
<tr>
<td>新パスワード</td>
<td><input type="password" name="new_password"></td>
</tr>
<tr>
<td>確認入力</td>
<td><input type="password" name="new_password2"></td>
</tr>
<tr>
<td></td>
<td><input type="submit" value="変更"/></td>
</tr>
</table>
</form>

</section>


<%@include file="../footer.html"%>
