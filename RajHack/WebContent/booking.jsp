<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>HUNARMAND</title>
	<link rel="stylesheet" type="text/css" href="style123.css">
	<link rel="stylesheet" type="text/css" href="w3.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<jsp:useBean id="obj1" class="qrcode.InsertBean">
   <jsp:setProperty name="obj1" property="*" />
   </jsp:useBean>
<% obj1.conn();
	obj1.check();%> 
<br>
<header>
   	<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="home.html">HUNARMAND</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="index.html">Log Out</a></li>
      </ul>
     
  </div>
</nav>

   </header>

    <!--section one img-->
     <section class="container-fluid w3-display-container">
         <div>

         	<img src="abcd.jpg" style="width: 100%;height: 600px;">

         </div>
         <div class="w3-display-left w3-container" style="color: black;font-size: 40px;background: white;width: 450px;opacity: 0.8;" >

          <p class="row" style="text-align: center;">
          	HAVE A IDEA!
          	<hr style="background: black;margin-top: -20px;width: 300px;margin-left: 50px;">
          	   <p style="font-size: 30px;text-align: center;margin-top: -20px;">
          	   	 Share with us.
          	   </p>

          </p>
          </div>
     	


     </section>


     <div class="space"></div>
       <!--about us-->
     <section class="container">
          <div class="row w3-card-4"  style="text-align: center;">
          	<h3>What We do?</h3>
          </div>
           <div class="row w3-card-4 ho" style="margin-top: 8px;">
           	<p>
           	   Our Motive is to provide a platform to the people of INDIA where they can share idea.
           	   Even can fund someone idea as well.BY this We want to Track the skills of the people.
           	   We want to see the potential that people have with them. And are unable to showcase 
           	   Themself.
           	   <p>
           	   	So we provied this platform where you can put your idea or a prototype of project
           	   	even a jugad if you have one.
           	   	From here the common people can review your idea/project as well the Government.
           	   	And if they like your idea/project they can fund your project or even provide 
           	   	you some support.

           	   </p>
           	</p>

           </div>
     	

     </section>
     <div class="space"></div>
     <!--how to put-->

     <section class="container ho">
      <div class="row  "  style="text-align: center;">
         <h3> How to put your idea?</h3>
      	
      </div>
      <div>
      	<p class="row" style="text-align: center;">
      		In order to put your idea/project on our platform you have to pay rupee 10.
      		  
      		 
      		  <p class="row" style="text-align: center;">
      		  <form action="http://emitrauat.rajasthan.gov.in/payments/v1/init" method="POST">
<input type="hidden" name="MERCHANTCODE" value="HACKATHON2017" />
<input type="hidden" name="PRN" value="<jsp:getProperty property="mob_no" name="obj1"/>" />
<input type="hidden" name="REQTIMESTAMP" value="20160623132359958" />
<input type="hidden" name="PURPOSE" value="fund" />
<input type="hidden" name="AMOUNT" value="10.00" />
<input type="hidden" name="SUCCESSURL" value="http://localhost:8080/RajHack/newpost.html" />
<input type="hidden" name="FAILUREURL" value="http://localhost:8080/RajHack/failure.html" />
<input type="hidden" name="CANCELURL" value="http://localhost:8080/RajHack/cancelation.html" />
<input type="hidden" name="USERNAME" value="<jsp:getProperty property="name" name="obj1"/>" />
<input type="hidden" name="USERMOBILE" value="<jsp:getProperty property="mob_no" name="obj1"/>"/>
<input type="hidden" name="USEREMAIL" value="<jsp:getProperty property="mail" name="obj1"/>"/>
<input type="hidden" name="UDF1" value="payqwer" />
<input type="hidden" name="UDF2" value="paywer" />
<input type="hidden" name="UDF3" value="paywer" />
<input type="hidden" name="CHECKSUM" value="<jsp:getProperty property="checksum" name="obj1"/>" />
<p class="row" style="text-align:center;">
<button class="btn" type="submit">Pay Rs.10</button></p>
</form>
      		  
      		  	
      		  </p>
      	</p>

      </div>
     	

     </section>
     <!--How to fund-->
     <div class="space"></div>
      <section class="container">
      <div class="row "  style="text-align: center;">
         <h3> How you can  Fund?</h3>
      	
      </div>
      <div>
      	<p class="row" style="text-align: center;">
      		Liked a project. Want to fund the project or support.In order to fund or support the project 
      		Register your self on our platform and than you are good to go!

      	</p>

      </div>
     	

     </section>
        <!--contact form-->
     <section class="container">
       <form>
       	   

       </form>
     	
     </section>


     





</body>
</html>