<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    //JankenServletで生成したデータを受け取る
    String pcHand = (String)request.getAttribute("pcHand");
    String userHand = (String)request.getAttribute("userHand");
    Integer judge = (Integer)request.getAttribute("judge");
    %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<script type="text/javascript" src="./js/method.js"></script>
		<title>RPS-Online_15</title>
  </head>
  <body>
	   <form name="janken" action="JankenServlet" method="get">
			  <h1>RPSオンライン</h1>
			  
			  <h2>ぽん！</h2>
			  
			  <%if(judge != null) {%>
				  <p>PCの手は<%= pcHand%></p>
				  <img alt="pcHand" src="./img/RPS_Rock.png">
				   
	        <p>あなたの手は<%= userHand%></p>
	         <img alt="userHand" src="./img/RPS_Rock.png">
	         
	        <%if(judge == 0){ %>
	         <p>あいこです</p>
	        <%} %>
	        
	        <%if(judge == 1){ %>
           <p>負けです</p>
          <%} %>
          
          <%if(judge == 2){ %>
           <p>勝ちです</p>
          <%} %>
	        
	       <%} %>
			  
		 </form>
	 
  </body>
</html>
