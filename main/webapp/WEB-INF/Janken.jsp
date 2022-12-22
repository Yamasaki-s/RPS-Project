<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
	<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	
	
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>RPS-Online_15</title>
		<link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet">
		<script type="text/javascript" src="./js/method.js"></script>
  </head>
  
  <body>
	   <form name="janken" action="JankenServlet" method="get">
			  <h1>RPSオンライン</h1>
			  
			  <p>最初はグー、じゃんけん・・・ぽん！</p>
			  
			  <table>
			  	<tr>
					  	 <th>あなたの手</th>
					  	 <th>コンピュータの手</th>
				 </tr>
				 
				 <tr>
						 <th><img alt="userHand" src="${pageContext.request.contextPath}/img/<c:out value="${userImgHand}" />">
				         <th><img alt="pcHand" src="${pageContext.request.contextPath}/img/<c:out value="${pcImgHand}" />">
				   </tr>
				   
				   <tr>
				   		<th>
				   			<div class="box">
			        	  	<p><c:out value="${userHand }" /></p>
			        	  	</div>
			        	  </th>
			      
				   		<th>
				   			<div class="box">
			        	  	<p><c:out value="${pcHand }" /></p>
			        	  	</div>
			        	</th>
			        </tr>
				 
					<tr>
					     <th>
					     
					       <c:out value="${result1 }" /><br>
					       <c:out value="${result2 }" />
					     </th>
					 </tr>
	        	 
	        	</table>
	         	
		 </form>
	 
  </body>
</html>