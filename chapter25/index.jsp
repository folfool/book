<%@page contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../header.html" %>
<link rel="stylesheet" href="../css/slide.css">


<body class="home">
<div id="container">

<header>
<h1 id="logo"><a href="index.jsp"><img src="../images/logo.png" alt="店のロゴ" ></a></h1>

<!--スライドショー-->
<aside id="mainimg">
<div class="slide1">slide1</div>
<div class="slide2">slide2</div>
<div class="slide3">slide3</div>
<div class="slide0"><img src="../images/waku2.png" alt=""></div>
</aside>
</header>


<%@include file="menu.jsp" %>


<div id="contents">

<section id="new" class="box1">

<h2><span>What's New</span></h2>
<dl>
<dt>2022/01/26</dt>
<dd>当サイトはポートフォリオです。<span class="newicon">NEW</span></dd>
<dt>2022/01/20</dt>
<dd>新メニュー「プリン船」3月発売予定！<span class="newicon">NEW</span></dd>
<dt>2021/01/01</dt>
<dd>２号店にて、開店20周年感謝祭を行います！</dd>
<dt>2020/09/06</dt>
<dd>通販注文サービスを開始致しました！</dd>
<dt>2000/02/02</dt>
<dd>２号店オープンしました！</dd>
<dt>1997/09/06</dt>
<dd>１号店オープンしました！</dd>
</dl>

</section>
</div>


<%@include file="../footer.html"%>