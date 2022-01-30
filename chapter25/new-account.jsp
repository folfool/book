<%@page contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../header.html" %>


<div id="container">

<header>
<h1 id="logo"><a href="index.jsp"><img src="../images/logo.png" alt="FUKUNOSUSHI COMPANY"></a></h1>
</header>


<%@include file="menu.jsp" %>


<section class="box1">

<form action="NewAccount.action"> <%-- 「.action」で終わるのでフロントコントローラが受け取る --%>
<table>
<tr>
<td>アカウント新規作成</td>
<td>
<%if(request.getAttribute("error")!=null){%> <%-- 初回アクセス時はerrorという名前が取れないのでifの中入らない --%>

<%Integer error = (Integer)request.getAttribute("error"); %>
<%if(error / 100 == 1){ %>
<p><font color="red">データ登録に失敗しました。</font></p>
<%} %>
<%if(error % 10 == 1){ %>
<p><font color="red">入力されたログイン名は既に登録されています。</font></p>
<%} %>
<%if(error % 100 / 10 == 1){ %>
<p><font color="red">パスワードと確認入力が一致しません。</font></p>
<%} %>

<% } %>
</td>
</tr>
<tr>
<td>ログイン名</td>
<td><input type="text" name="login"></td>
</tr>
<tr>
<td>パスワード</td>
<td><input type="password" name="password"></td>
</tr>
<tr>
<td>確認入力</td>
<td><input type="password" name="password2"></td>
</tr>
<tr>
<td></td>
<td><input type="submit" value="作成"/></td>
</tr>
</table>
</form>

</section>


<%@include file="../footer.html"%>