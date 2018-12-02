<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Home - Blue Cross Blue Shield</title> 
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
<!--===============================================================================================-->	
	<!-- <link rel="icon" type="image/png" href="images/icons/favicon.ico"/> -->
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
            <img class="logolanding" src="images/full-logo.svg">
            <img class="avatar" src="images/avatar-01.jpg" alt="AVATAR">
        </div>
		<div class="container-login100">
			<div class="search wrap-login100 m-t-0">
				<form class="login1001-form validate-form" method="" action="<%=request.getContextPath()%>/mngclients.jsp" id="search">
                  
               <div class="wrap-input1001 validate-input">
                 
						<input class="input1001" type="text" name="search" data-validate = "Enter username">
						<span class="focus-input1001" data-placeholder="Search for a Client, Subclient, or Group"></span>
                   <button form="search" type="submit" class="login1001-form-btn">
                       <img src="<%=request.getContextPath()%>/images/icons/search.svg">
						</button>
					</div>
                </form>
            </div>
             
            <div class="wrap">
            <button class="box m-b-10">
                <img class="ico p-t-60" src="<%=request.getContextPath()%>/images/icons/calendar.png">
                
            
            <p class="m-t-10 m-b-40">Schedule Follow-up</p>
            </button>
            <button class="box m-l-10 m-b-10">
                <img class="ico p-t-60" src="<%=request.getContextPath()%>/images/icons/documents.png">
                
            <p class="m-t-10 m-b-40">Product Management</p>
            </button>
            <button class="box m-b-10">
            
                <img class="ico p-t-60" src="<%=request.getContextPath()%>/images/icons/workers.png">
                
                
            <p class="m-t-10 m-b-40">Manage Clients</p>
            </button>
            <button class="box m-l-10 m-b-10">
          
                <img class="ico p-t-60" src="<%=request.getContextPath()%>/images/icons/list.png">
                
            
            <p class="m-t-10 m-b-40">Notes & Activities</p>
            </button>
				</div>	
		</div>
	</div>

</body>
</html>