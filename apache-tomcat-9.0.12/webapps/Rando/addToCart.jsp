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
       
<!--       MAIN -->
        <div class="large-12 medium-12 cell main">
           <h2 id="indexHeader">WELCOME TO GADGET.COM</h2>
           </div>
           
        </div>
        
        
                  <div class="grid-x grid-padding-x">
            <div class="large-12 cell">
              <div class="primary callout">
                <p><strong>This is a twelve cell section in a grid-x.</strong> Lorem ipsum dolor sit amet, consectetur adipiscing elit. In elementum libero id diam pretium pulvinar. Maecenas non metus nec ipsum consequat porta et placerat arcu.</p>
                
                <p> Sed finibus efficitur libero, blandit tempus mauris. Donec feugiat felis ac elit luctus posuere. Duis metus lorem, condimentum in interdum a, bibendum nec eros. </p>
                
              </div>
            </div>
          </div>
          <div class="grid-x grid-padding-x">
            <div class="large-2 medium-4 small-6 cell">
              <div class="primary callout">
                <p>Four cell</p>
              </div>
            </div>
            <div class="large-2 medium-4 small-6 cell">
              <div class="primary callout">
                <p>Four cell</p>
              </div>
            </div>
            <div class="large-2 medium-4 small-6 cell">
              <div class="primary callout">
                <p>Four cell</p>
              </div>
            </div>
            <div class="large-2 medium-4 small-6 cell">
              <div class="primary callout">
                <p>Four cell</p>
              </div>
            </div>
            <div class="large-2 medium-4 small-6 cell">
              <div class="primary callout">
                <p>Four cell</p>
              </div>
            </div>
            <div class="large-2 medium-4 small-6 cell">
              <div class="primary callout">
                <p>Four cell</p>
              </div>
            </div>
          </div>
        <%
    if (request.getParameter("item") == null) {
        out.println("nothing selected; how did you do that?");
    } else {
    	System.out.println("Got the info from form");
		User u = new User();
    	DB test = new DB();
    	u=test.getUser(1);
    	/*			order.setIdorder(idorder);
			order.setShipping_address(""+u.getadd1()+" "+u.getadd2()+" "+u.getcity()+" "+u.getstate()+" "+u.getzip()+" ");
			order.setCust_name(u.getfirst_name()+" "+u.getlast_name());
			order.setItems_in_cart(item);
			order.setPayment_type(" ");
			order.setCreditcard_cust_num(ct);
			order.setCreditcard_cust_name(u.getfirst_name()+" "+u.getlast_name());
    	*/
    	DB test1 = new DB();
    	 Boolean flag = test1.itemEntry(""+u.getadd1()+" "+u.getadd2()+" "+u.getcity()+" "+u.getstate()+" "+u.getzip()+" ",request.getParameter("item"),u.getfirst_name()+" "+u.getlast_name()," "," ",123, 1); 
    	 
    	 if(flag){
    		 System.out.println("FLAG IS A GO");
    		 %><script type="text/javascript">window.location.replace("index.jsp");</script><%
    		}
    		else { 
    			%> <script type="text/javascript">alert("Data not entered into the database");</script><%
    			
    		}
    }
%>
         
    </body>
</html>
