<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RPS-Online_15</title>
<link href="${pageContext.request.contextPath}/static/common.css" rel="stylesheet">
<script type="text/javascript" src="./js/method.js"></script>
</head>

<body>
  <form name="janken" action="JankenServlet" method="get">
  <h1>RPSオンライン</h1>
  
    <div class="container-fluid">
      <div class="row">
        <div class="col-md-7 text-center">
        
        <p>最初はグー、じゃんけん・・・</p>

       <table>
        	<tr>
			        <input type= "hidden" name="hand" value="" />
			        <th><a href = "javaScript:select('0')"><img alt="グー" src="./img/RPS_Rock.png"></a>
			        <th><a href = "javaScript:select('1')"><img alt="チョキ" src="./img/RPS_Scissors.png"></a>
			        <th><a href = "javaScript:select('2')"><img alt="パー" src="./img/RPS_Paper.png"></a>
			</tr>
			
			 <tr>
			      <th><a href = "javaScript:select('0')"><button type="button" name="グー" value="">グー</button></a></th>
			      <th><a href = "javaScript:select('1')"><button type="button" name="チョキ" value="">チョキ</button></a></th>
			      <th> <a href = "javaScript:select('1')"><button type="button" name="チョキ" value="">パー</button></a></th>
			 </tr>
			 
        </table>
        </div>
      </div>
    </div>
  
  </form>
</body>
</html>