<%@page contentType="text/html; charset=UTF-8" %>


<div id="container">

<header>
<h1 id="logo"><a href="../chapter25/index.jsp"><img src="../images/logo.png" alt="FUKUNOSUSHI COMPANY"></a></h1>
</header>


<%@include file="../chapter25/menu.jsp" %>


<form action="Login.action" method="post">
<section class="box1">
<p>ログイン名<input type="text" name="login"></p>
<p>パスワード<input type="password" name="password"></p>
<p><input type="submit" value="ログイン"></p>
</section>
</form>


<%@include file="../footer.html"%>