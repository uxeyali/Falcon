<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>GADGET.COM</title>
        <link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/foundation.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/main.css">
    </head>
    <body>
       
      
<%@ page import="java.io.*" %> 
<%@ page import="db.*" %> 
       
<!--       MAIN HEADER-->
       <div class="grid-x grid-padding-x">
        <div id="bar" class="large-12 cell">
           <a id="homeLogo" href="index.jsp">
           
            <p id="gadgetlogo">
                &nbsp;
                GADGET
            </p>
            
            <p id="comlogo">
            .COM
            </p>
            
            </a>
            
            <a id="cart" href="cart.jsp"> <img src="images/cart.png"></a>
            <a id="user" href="login.jsp"> <img src="images/user.png"></a>
        </div>
        </div>
        
<!--      SECONDARY HEADER WITH NAVIGATION -->
         <nav class="vertical medium-horizontal menu" id="navig">
            <a href="index.jsp"><i class="fi-list"></i> <span>Home</span></a>
         <a href="laptop.jsp"><i class="fi-list"></i> <span>Laptops</span></a>
  <a href="camera.jsp"><i class="fi-list"></i> <span>Cameras</span></a>
  <a href="phones.jsp"><i class="fi-list"></i> <span>Cell Phones</span></a>
      </nav>
       
<!--       END OF NAVIGATION-->
       
       <div class="grid-x grid-padding-x">
       
        <div class="large-12 medium-12 cell main">
           <h3 id="indexHeader">REGISTER</h3>
           </div>
           
        <div class="large-4 large-offset-4 medium-6 medium-offset-3 cell sidebar">
        
<!--        <h2>REGISTER</h2>-->
<!--        <hr>-->
        <br>
        <form action="register.jsp" method="get">
        <div class="large-6 medium-6 small-12">
        <label><h5>Username</h5>
        <input type="text" name="username">
        </label>
        </div>
        
        <div class="large-6 medium-6 small-12">
        <label><h5>Password</h5>
        <input type="password" name="password">
        </label>
        </div>
        
        <div class="large-6 medium-6 small-12">
        <label><h5>First Name</h5>
        <input type="text" name="fname">
        </label>
        </div>
        
        <div class="large-6 medium-6 small-12">
        <label><h5>Last Name</h5>
        <input type="text" name="lname">
        </label>
            </div>
            
            <div class="large-6 medium-6 small-12">
        <label><h5>E-mail</h5>
        <input type="email" name="email">
        </label>
            </div>
            
            <div class="large-6 medium-6 small-12">
        <label><h5>Phone Number</h5>
        <input type="tel" name="tel"> 
        </label>
        </div>
           
          <!--   <div class="large-6 medium-6 small-12">
            
            
        <h5>Range</h5>
       <fieldset>
    <input type ="range" max="1000" min="20"
        oninput="document.getElementById('rangeValLabel').innerHTML = this.value;"
        step="1" name="rangeVal" id="rangeVal" value="200">
    <em id="rangeValLabel" style="font-style: normal;"></em>
                </fieldset>
        </div> -->
           
           
            
        <div class="large-6 medium-6 small-12">
        <h5>Address</h5>
        <label><h6>Address 1</h6>
        <input type="text" name="add1">
        </label>
          
          <label><h6>Address 2</h6>
        <input type="text" name="add2">
        </label>
        
        
           <label><h6>City</h6>
        <input type="text" name="city">
        </label>
          
          <label><h6>State</h6>
        <input type="text" name="state">
        </label>
           
           
           <label><h6>Country</h6>
        <input type="text" name="country">
        </label>
          
            <label><h6>Zipcode</h6>
        <input type="text" name="zipcode">
        </label>
           
            </div>
            
            
            
        <input type="submit" name="LOGIN" class="yellowButton">
        
        <br><br>
        </form>
        </div>
     
        
        </div>
        
<%
String username = request.getParameter("username");
String password = request.getParameter("password");
String fname = request.getParameter("fname");
String lname = request.getParameter("lname");
String email = request.getParameter("email");
String phone = request.getParameter("tel");
String add1 = request.getParameter("add1");
String add2 = request.getParameter("add2");
String city = request.getParameter("city");
String zip = request.getParameter("zipcode");
String country = request.getParameter("country");
String state = request.getParameter("state");

System.out.println(username + fname + lname + email + phone + add1 + add2 + city + zip + country + state);

if ( username!= null && !username.trim().equals("") &&
	password != null && !password.trim().equals("") &&
	 fname != null && !fname.trim().equals("") &&
	 lname != null && !lname.trim().equals("") &&
	 email != null && !email.trim().equals("") &&
	 phone != null && !phone.trim().equals("") &&
	 add1 != null && !add1.trim().equals("") &&
	 city != null && !city.trim().equals("") &&
	 zip != null && !zip.trim().equals("") &&
	 country != null && !country.trim().equals("") &&
	 state != null && !state.trim().equals("")
		){
	
	System.out.println("Got the info from form");

	DB test = new DB();
	 Boolean flag = test.userEntry(username, password, fname, lname, email, phone, add1, add2, city, zip, state, country ); 
	 
	 if(flag){
		 System.out.println("FLAG IS A GO");
		 String redirectURL = "user.jsp?username=";
         response.sendRedirect(redirectURL + username);
		}
		else { 
			%> <script type="text/javascript">alert("Entry Failure. Please try another username and fill all the data entries.");</script><%
			
		}
}
%>
        
    </body>
</html>
