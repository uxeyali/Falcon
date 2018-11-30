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
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%
		String searchValue = request.getParameter("search");
		System.out.println("Sending stuff to database");
		DatabaseWork db = new DatabaseWork();
		List<ClientList> list = db.search((searchValue != null ? searchValue : ""));
		request.setAttribute("list", list);
	%>
	<div class="limiter"> 
        <div class="main">
            <img class="logolanding" src="<%=request.getContextPath()%>/images/full-logo.svg">
            <img class="avatar" src="<%=request.getContextPath()%>/images/avatar-01.jpg" alt="AVATAR">
        </div>
		<div class="container-login100">
			<div class="search wrap-login100 m-t-0">
				<form class="login1001-form validate-form" method="" action="<%=request.getContextPath()%>/mngclients.jsp" id="search">
                  
               <div class="wrap-input1001 validate-input">
                 
						<input class="input1001" type="text" name="search" data-validate = "Enter username">
						<span class="focus-input1001" data-placeholder="Search for a Client, Subclient, or Group"></span>
                   <button form="search" type="submit" class="login1001-form-btn">
                       <img src="<%=request.getContextPath()%>//images/icons/search.svg">
						</button>
					</div>
                </form>
            </div>
             
            <div class="wrap2 m-t-50">
           	<c:forEach items="${list}" var="object">
            
            	<button class="clientbox"><c:out value="${object.getCustomerName()}"/><br><span class="thinner">
            	Group #: <c:out value="${object.getGroupNumber()}"/> <br>
            	Group #6: <c:out value="${object.getGroupNumberSix()}"/><br>
            	Client ID: <c:out value="${object.getClientID()}"/></span></button>
          	</c:forEach>
                <!-- <button class="clientbox">SOME OTHER CLIENT HERE<br><span class="thinner"> Some extra info</span></button>
                <button class="clientbox">AND ANOTHER ONE HERE<br><span class="thinner"> Some extra info</span>
            </button>
                <button class="clientbox">AND THEN THERE IS THIS ONE<br><span class="thinner"> Some extra info</span>
            </button>
                <button class="clientbox">THIS ONE IS SUPPOSED TO BE A REALLY LONG NAME SO IM JUST FILLING THIS UP<br><span class="thinner"> Some extra info</span>
            </button>
                <button class="clientbox">FOR PEOPLE WHO PUT ADDRESSES IN CLIENT NAMES<br><span class="thinner"> Some extra info</span>
            </button>
                <button class="clientbox">HERE YOU GO<br><span class="thinner"> Some extra info</span>
            </button>
                <button class="clientbox">HERES ANOTHER ONE<br><span class="thinner"> Some extra info</span>
            </button>
                <button class="clientbox">AND ANOTHER ONE<br><span class="thinner"> Some extra info</span>
            </button> -->
                
				</div>	
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