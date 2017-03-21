<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
     <link type="text/css" rel="stylesheet" href="main.css" /> 
     <link href="cssblog/bootstrap.min.css" rel="stylesheet">
     <link href="cssblog/blog-home.css" rel="stylesheet">
     <title>HUNARMAND</title>
	</head>

	<body >
		                <jsp:useBean id="obj2" class="qrcode.InsertPostBean">
   <jsp:setProperty name="obj2" property="*" />
   </jsp:useBean>
<% obj2.connn();%> 

		<br>
		<h6 class="main-title" style="padding-left:150px">
          You Have Successfully Posted Your Idea
		</h6> 
		<!-- Navigation -->
			<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
				<div class="container">
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
								<li>
									<a href="index.html">Log Out</a>
								</li>
						</ul>
					</div>
				</div>
			</nav>
	
		<div class="container" >
			<div class="row">
				<div class="col-md-8" style="padding-left:150px">	
					<br>
					<b>Title :-</b> <jsp:getProperty property="subject" name="obj2"/><br><br>
					<b>Description :-</b> <jsp:getProperty property="content" name="obj2"/>
				</div>   
			</div>
		</div>	
	</body>
</html>