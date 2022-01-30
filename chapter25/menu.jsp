<%@page pageEncoding="UTF-8" %>
<link rel="stylesheet" href="css/style.css">

<nav id="menubar">
<ul>
<li class="current"><a href="../chapter25/index.jsp">Home</a></li>
<li><a href="../chapter25/Product.action">商品</a></li>
<li><a href="../chapter25/cart.jsp">カート</a></li>
<li><a href="../chapter25/Preview.action">購入</a></li>
<%if(session.getAttribute("customer")==null){ %>
<li><a href="../chapter24/login-in.jsp">ログイン</a>
<li><a href="../chapter25/new-account.jsp">アカウント新規作成</a>

<%}else{ %>
<li><a href="../chapter24/logout-in.jsp">ログアウト</a></li>
<li><a href="../chapter25/account-setting.jsp">アカウント設定</a></li>
	　　ようこそ！${customer.login}さん
<%} %>
</ul>
</nav>
