<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RPS-Online_15</title>
<script type="text/javascript" src="./js/method.js"></script>
</head>

<body>
  <form name="janken" action="JankenServlet" method="get">
  <h1>RPSオンライン</h1>
  
    <div class="container-fluid">
      <div class="row">
        <div class="col-md-7 text-center">
        
        <%--PCの手--%>
        <p>【PC】</p>
        <p>最初はグー</p>
        <img alt="pcHand" src="./img/RPS_Rock.png">
        
        <%--ユーザーの手--%>
        <p>【あなた】</p>
        <p>最初はグー</p>
        <img alt="userHand" src="./img/RPS_Rock.png">
        
        <p>じゃんけん・・・</p>
        <input type= "hidden" name="hand" value="" />
        <a href = "javaScript:select('0')"><img alt="グー" src="./img/RPS_Rock.png"></a>
        <a href = "javaScript:select('1')"><img alt="チョキ" src="./img/RPS_Scissors.png"></a>
        <a href = "javaScript:select('2')"><img alt="パー" src="./img/RPS_Paper.png"></a>
        </div>
      </div>
    </div>
  
  </form>
</body>
</html>
