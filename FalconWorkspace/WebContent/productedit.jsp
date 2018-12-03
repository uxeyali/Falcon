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
	<%@ page import="java.util.List" %>
	<%@ page import="dB.DatabaseWork" %>
	<%@ page import="dB.ClientList" %>
	<%@ page import="dB.clientproduct" %>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%
		String group = request.getParameter("group"); // is going to be the group number
		DatabaseWork db = new DatabaseWork();
		List<clientproduct> products = db.grabRecord(group);
		
		request.setAttribute("products", products);
		
	%>
	<div class="limiter"> 
        <div class="main">
            <img class="logolanding" src="<%=request.getContextPath()%>/images/full-logo.svg">
            <img class="avatar" src="<%=request.getContextPath()%>/images/avatar-01.jpg" alt="AVATAR">
        </div>
        
         <div class="nav">
        
            <ul>
            <li>Home</li>
            <li>Schedule Follow-up</li>
            <li>Product Management</li>
            <li>Notes & Activities</li>
            </ul>
        </div>
        
		<div class="container-login100">
			 <div class="wrap3">
                <br>
                <h1 class="clientname"> BLUE CROSS BLUE SHIELD MN</h1>
                <hr>
                
                <h2>Package List</h2>
                
                <hr>
                <div class="twocol1">
                
                
                <c:forEach items = "${products}" var="object">
                <h5 class=""> ${object.getProductType()} </h5>
                <label class="switch">
                  	<input type="checkbox"  >
                  	<span class="slider round"></span>
                </label>
                </c:forEach>
                
                <h5 class=""> PREPAYCOT</h5>
                    <!-- Rounded switch -->
                <label class="switch">
                  <input type="checkbox">
                  <span class="slider round"></span>
                </label>
                <h5 class=""> CRBALOPT</h5>
                    <!-- Rounded switch -->
                <label class="switch">
                  <input type="checkbox" checked>
                  <span class="slider round"></span>
                </label>
                
                 
                    </div>
                <br>
            <hr>
                <div class="buttons">
                <button class="cancel">Cancel</button>
            <button class="login1001-form-btn1">Save Changes</button>
                    </div>
                <br><br>
				</div>
            
            <br>
		</div> 
	</div>
	
<!--===============================================================================================-->
	<script src="<%=request.getContextPath()%>/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="<%=request.getContextPath()%>/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="<%=request.getContextPath()%>/vendor/bootstrap/js/popper.js"></script>
	<script src="<%=request.getContextPath()%>/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="<%=request.getContextPath()%>/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="<%=request.getContextPath()%>/vendor/daterangepicker/moment.min.js"></script>
	<script src="<%=request.getContextPath()%>/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="<%=request.getContextPath()%>/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="<%=request.getContextPath()%>/js/main.js"></script>

</body>
</html>