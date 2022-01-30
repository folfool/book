<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>ふくのすしカフェ~新鮮お寿司＆甘いスイーツのお店</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="ふくのすしカフェの公式サイトです。新鮮なお寿司と甘いスイーツをご用意しております。是非お越しくださいませ。通販でのご注文も承っております！">
<meta name="keywords" content="寿司,ケーキ,カフェ,ランチ,ディナー">
<link rel="stylesheet" href="../css/style.css">
<script src="js/fixmenu_pagetop.js"></script>
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
</head>
<body>
<!-- 上の代わりがコメントアウト内の分
<%@page contentType="text/html; charset=UTF-8" %>
<%@include file="../header.html" %>
-->

<div id="container">

<header>
<h1 id="logo"><a href="index.jsp"><img src="../images/logo.png" alt="FUKUNOSUSHI COMPANY"></a></h1>
</header>



<nav id="menubar">
<ul>
<li class="current"><a href="index.html">Home</a></li>
<li><a href="../chapter25/Product.action">商品</a></li>
<li><a href="../chapter25/cart.jsp">カート</a></li>
<li><a href="../chapter25/Preview.action">購入</a></li>
<li><a href="../about.html">About(後で消す)</a></li>
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
<!--  上の代わりがコメントアウト内の分
<%@include file="menu.jsp" %>
 -->


<section class="box1">

<p>購入手続き中にエラーが発生しました。</p>

</section>



<!--
<%@include file="../footer.html"%>
下の分の代わりがコメントアウト内の分 -->

<footer>
<small>Copyright&copy; <a href="chapter25/index.jsp">FUKUNOSUSHICAFFECOMPANY</a> All Rights Reserved.</small>
<span class="pr">《<a href="https://template-party.com/" target="_blank">Web Design:Template-Party</a>》</span>
</footer>

</div>
<!--/#container-->

<!--ページの上部に戻る「↑」ボタン-->
<p class="nav-fix-pos-pagetop"><a href="#"><img src="images/pagetop.png" alt="PAGE TOP"></a></p>

</body>
</html>
