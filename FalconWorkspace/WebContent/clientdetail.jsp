<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Client Detail</title>
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
	
	<div class="limiter"> 
        <div class="main">
            <img class="logolanding" src="<%=request.getContextPath()%>/images/full-logo.svg">
            <img class="avatar" src="<%=request.getContextPath()%>/images/avatar-01.jpg" alt="AVATAR">
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
        
		<div class="container-login100">
			 
            <div class="wrap3">
                <br>
                <h1 class="clientname"> BLUE CROSS BLUE SHIELD MN</h1>
                <hr>
                <h2>Client information</h2>
                <hr>
                <div class="twocol">
                <h5 class="bold"> Client ID</h5>
                 <h5 class="m-l-30"> 207123</h5>
                    <h5 class="bold"> Consortium Number</h5>
                    <h5 class="m-l-30"> 435564564</h5>
                    <h5 class="bold"> Group Number</h5>
                    <h5 class="m-l-30"> 0PE003</h5>
                    <h5 class="bold"> Group Type</h5>
                    <h5 class="m-l-30"> Self Insured</h5>
                    <h5 class="bold"> Client Category</h5>
                    <h5 class="m-l-30"> Public Sector</h5>
                    <h5 class="bold"> Client SubCategory</h5>
                    <h5 class="m-l-30">PEIP</h5>
                    <h5 class="bold"> Comments</h5>
                    <h5 class="m-l-30"> Here is a bunch of comments a person might have about a client. Those need to go here.</h5>
                    </div>
                <br>
                <br>
                <h2>Package List</h2>
                
                <hr>
                <div class="threecol">
                <h5 class=""> PREPAYCOT</h5>
                 <h5 class="m-l-30"> RDMCOT</h5>
                    <h5 class="m-l-30"> RDMOPT</h5>
                    <h5 class=""> CRBALOPT</h5>
                    <h5 class="m-l-30"> COMBI</h5>
                    <h5 class="m-l-30"> DRG</h5>
                    <h5 class=""> SSTAY</h5>
                    <h5 class="m-l-30"> READM</h5>
                <h5 class="m-l-30"> PREPAYCOT</h5>
                <h5 class=""> PREPAYCOT</h5>
                 <h5 class="m-l-30"> RDMCOT</h5>
                    <h5 class="m-l-30"> RDMOPT</h5>
                    <h5 class=""> CRBALOPT</h5>
                    <h5 class="m-l-30"> COMBI</h5>
                    <h5 class="m-l-30"> DRG</h5>
                    <h5 class=""> SSTAY</h5>
                    <h5 class="m-l-30"> READM</h5>
                <h5 class="m-l-30"> PREPAYCOT</h5>
                <h5 class=""> PREPAYCOT</h5>
                 <h5 class="m-l-30"> RDMCOT</h5>
                    <h5 class="m-l-30"> RDMOPT</h5>
                    <h5 class=""> CRBALOPT</h5>
                    <h5 class="m-l-30"> COMBI</h5>
                    <h5 class="m-l-30"> DRG</h5>
                    <h5 class=""> SSTAY</h5>
                    <h5 class="m-l-30"> READM</h5>
                <h5 class="m-l-30"> PREPAYCOT</h5>
                <h5 class=""> PREPAYCOT</h5>
                 <h5 class="m-l-30"> RDMCOT</h5>
                    <h5 class="m-l-30"> RDMOPT</h5>
                    <h5 class=""> CRBALOPT</h5>
                    <h5 class="m-l-30"> COMBI</h5>
                    <h5 class="m-l-30"> DRG</h5>
                    <h5 class=""> SSTAY</h5>
                    <h5 class="m-l-30"> READM</h5>
                <h5 class="m-l-30"> PREPAYCOT</h5>
                    </div>
                <br>
            <hr>
                
                <form id="edit" method="get" action="productedit.jsp">
            <button class="login1001-form-btn1" type="submit" form="edit">Edit Products</button>
                <br><br>
                    </form>
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