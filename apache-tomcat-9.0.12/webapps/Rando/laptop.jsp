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
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
       
<!--       SIDEBAR -->
        <div class="large-2 medium-3 cell sidebar">
          <h2>FILTER</h2>
          <!-- Grid Example -->

         <form method="get">
          <div class="grid-x grid-padding-x">
            <div class="large-12 cell sidebar">
             
              <div class="primary callout">
                <h3><strong>MANUFACTURER</strong></h3>
                
                <label> <input type="checkbox" name="manufacturer" value="apple"> Apple </label>
                <label> <input type="checkbox" name="manufacturer" value="hp"> HP</label>
                <label> <input type="checkbox" name="manufacturer" value="samsung"> Samsung </label>
                <label> <input type="checkbox" name="manufacturer" value="lenovo"> Lenovo </label>
                <label> <input type="checkbox" name="manufacturer" value="acer"> Acer </label>
                <label> <input type="checkbox" name="manufacturer" value="dell"> Dell </label>
                
              </div>
            </div>
          </div>
          
          <div class="grid-x grid-padding-x">
            <div class="large-12 cell sidebar">
              <div class="primary callout">
                <h3><strong>PROCESSOR</strong></h3>
                
                <label> <input type="checkbox" name="processor" value="Core m3"> Intel Core m3</label>
                <label> <input type="checkbox" name="processor" value="Core i5"> Intel Core i5 </label>
                <label> <input type="checkbox" name="processor" value="Core i7"> Intel Core i7 </label>
                <label> <input type="checkbox" name="processor" value="Atom"> Intel Atom </label>
                <label> <input type="checkbox" name="processor" value="Core i3"> Intel Core i3 </label>
                <label> <input type="checkbox" name="processor" value="Celeron"> Intel Celeron </label>
              </div>
            </div>
          </div>
          
          <div class="grid-x grid-padding-x">
            <div class="large-12 cell sidebar">
              <div class="primary callout">
                <h3><strong>STORAGE TYPE</strong></h3>
                
                <label> <input type="checkbox" name="storage_type" value="PCIe SSD"> PCIe SSD</label>
                <label> <input type="checkbox" name="storage_type" value="PCIe flash"> PCIe Flash </label>
                <label> <input type="checkbox" name="storage_type" value="Fusion Drive"> Fusion Drive </label>
                <label> <input type="checkbox" name="storage_type" value="eMMC"> eMMC </label>
                <label> <input type="checkbox" name="storage_type" value="SSD"> SSD </label>
                <label> <input type="checkbox" name="storage_type" value="HDD"> HDD </label>
                <label> <input type="checkbox" name="storage_type" value="DIMM"> DIMM </label>
                
              </div>
            </div>
          </div>
          
          <div class="grid-x grid-padding-x">
            <div class="large-12 cell sidebar">
              <div class="primary callout">
                <h3><strong>HARD DRIVE SIZE</strong></h3>
                <label> <input type="checkbox" name="storage" value="128"> 128GB </label>
                <label> <input type="checkbox" name="storage" value="256"> 256GB </label>
                <label> <input type="checkbox" name="storage" value="500"> 500GB </label>
                <label> <input type="checkbox" name="storage" value="1000"> 1TB </label>
                <label> <input type="checkbox" name="storage" value="2000"> 2TB </label>
                
              </div>
            </div>
          </div>
          
          <div class="grid-x grid-padding-x">
            <div class="large-12 cell sidebar">
              <div class="primary callout">
                <h3><strong>RAM SIZE</strong></h3>
                <label> <input type="checkbox" name="ram" value="2"> 2 </label>
                <label> <input type="checkbox" name="ram" value="4"> 4</label>
                <label> <input type="checkbox" name="ram" value="6"> 6</label>
                <label> <input type="checkbox" name="ram" value="8"> 8 </label>
                <label> <input type="checkbox" name="ram" value="16"> 16 </label>
                <label> <input type="checkbox" name="ram" value="32"> 32 </label>
                
              </div>
            </div>
          </div>
          
          <br>
          <input class= "yellowButton" type="submit" value="SUBMIT">
          
       </form>
        <br>
          <br>
           </div>
           
<!------------------------------------------------->
           <!--  SCRIPT -->
           
<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
           <%
           

String manufacturer = request.getParameter("manufacturer");
String processor = request.getParameter("processor");
String storage_type = request.getParameter("storage_type");
String storage = request.getParameter("storage");
String ram = request.getParameter("ram");

System.out.println(manufacturer+ processor + storage_type + storage);

System.out.println("Sending info to DB");

DB test = new DB();
 List<Product> list = test.Laptop(manufacturer, processor, storage_type, storage, ram);
 request.setAttribute("list", list);
%>
 
<!------------------------------------------------->
           <!--        MAIN WINDOW -->
        <div class="large-10 medium-9 cell main">
          <h2>LAPTOPS</h2>
          <!-- Grid Example -->

          <div class="grid-x grid-padding-x">
            <div class="large-12 cell">
              <div class="primary callout center">
                <p><strong>You can select the attributes you want on the left and click on submit.</strong><br> 
                If you want to start a new search, just repeat the same process as above.
                </p>
              </div>
            </div>
          </div> 
          <hr>
          <br>
          <div class="grid-x grid-padding-x">
   
        
		<%-- 
		<c:if test="${empty list}">
    var1 is empty or null.
		</c:if>
		<c:if test="${not empty list}">
    var1 is NOT empty or null.
		</c:if> --%>
		          
		 <c:forEach items="${list}" var="object">
			 <%-- <c:forEach items="${object}" var="value"> --%>
			 	<c:url var="addToCart" value="addToCart.jsp">
			 	<c:param name="query" value="${object[0]}" />
			 	</c:url>
			 	<div class="large-2 medium-4 small-4 cell">
	              <div class="primary callout">
	              <a href="addToCart.jsp?item=${object[0]}">
	              <img src="images/laptopImages/${object[0]}.jpg">
	                <p class="center widgetHeading">${object[8]} ${object[2]}</p>
	                </a>
	                <div class="large-12 medium-12 small-12 widget center"> 
	                <div class="widgetInfo"> USD ${object[1] }  
	                <a class="widgetBlack"> <img src="images/cartDevice.png"> </a>
	                </div> 
	                </div>
			 <br>
	              </div>
	            </div>
			<%--  </c:forEach> --%>
		 </c:forEach>
		        	  
            <!-- <div class="large-2 medium-4 small-4 cell">
              <div class="primary callout">
                <p>Four cell</p>
              </div>
            </div>
            <div class="large-2 medium-4 small-4 cell">
              <div class="primary callout">
                <p>Four cell</p>
              </div>
            </div>
            <div class="large-2 medium-4 small-4 cell">
              <div class="primary callout">
                <p>Four cell</p>
              </div>
            </div>
            <div class="large-2 medium-4 small-4 cell">
              <div class="primary callout">
                <p>Four cell</p>
              </div>
            </div>
            <div class="large-2 medium-4 small-4 cell">
              <div class="primary callout">
                <p>Four cell</p>
              </div>
            </div>
            <div class="large-2 medium-4 small-4 cell">
              <div class="primary callout">
                <p>Four cell</p>
              </div>
            </div> -->
          </div>

           </div>
        
        </div>
        
<%System.out.println("hey");%>
        
         
    </body>
</html>
