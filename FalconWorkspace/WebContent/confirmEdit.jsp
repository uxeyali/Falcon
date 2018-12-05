<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Manage Clients & Products</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="<%=request.getContextPath()%>/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/util.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/main.css">
<!--===============================================================================================-->
</head>
<body>
	
	<%@ page import="java.util.*" %>
	<%@ page import="dB.DatabaseWork" %>
	<%@ page import="dB.ClientList" %>
	<%@ page import="dB.clientproduct" %>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%
		String group = request.getParameter("group");
		System.out.println("Sending stuff to database");
		DatabaseWork db = new DatabaseWork();
		List<clientproduct> allProducts = db.grabRecord(group);
		List<String> valuesOn = new ArrayList<String>();
		for(clientproduct product : allProducts)
		{
			if(request.getParameter(product.getProductType()) != null) valuesOn.add(product.getProductType());
			System.out.println(request.getParameter(product.getProductType()) != null);
		}
		db = new DatabaseWork();
		db.updateClientProduct(group, valuesOn);
		
		//request.setAttribute("list", list);
		
	%>
	
	<div class="limiter"> 
        <div class="main">
            <img class="logolanding" src="images/full-logo.svg">
            <img class="avatar" src="images/avatar-01.jpg" alt="AVATAR">
        </div>
        
          <div class="nav">
        <ul>
            <li><a href="<%=request.getContextPath()%>/index.jsp">Home</a></li>
                <li><a href="<%=request.getContextPath()%>/index.jsp">Schedule Follow-up</a></li>
                <li><a href="<%=request.getContextPath()%>/mngclients.jsp">Client Management</a></li>
                <li><a href="<%=request.getContextPath()%>/index.jsp">Product Management</a></li>
                <li><a href="<%=request.getContextPath()%>/index.jsp">Notes & Activities</a></li>
            </ul>
        </div>
        
        <br><br>
		<div class="container-login100">
			
             <p> Thanks Uzma! </p>
		</div>
	</div>
	
<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>