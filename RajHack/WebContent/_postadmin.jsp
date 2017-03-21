<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.IOException"%>
<%@ page import="java.sql.*" %> 
<%@ page import="qrcode.DriveManag" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
     <link type="text/css" rel="stylesheet" href="main.css" /> 
     <link href="cssblog/bootstrap.min.css" rel="stylesheet">
     <link href="cssblog/blog-home.css" rel="stylesheet">
     <title>ALL IDEAS</title>
	</head>

	<body >
	 <jsp:useBean id="obj5" class="qrcode.RetrieveBean">
   <jsp:setProperty name="obj5" property="*" />
   </jsp:useBean>
<% obj5.connret();%> 
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
	<%


    	Connection con1=DriveManag.con;
    	String query="SELECT * FROM post ";
    	PreparedStatement ps=con1.prepareStatement(query);
        ResultSet rs=ps.executeQuery(query);
        while(rs.next()){%>
        <hr>
        <span><div style="margin-left:20px;"> <b>Username:</b></font><%=rs.getString(1)%><div></span>
		<span><div><b>Title:</b><%=rs.getString(2)%></div></span>
		<span><div><b>Idea Description:</b><%=rs.getString(3)%></div></span>
		
    <%} %>
	
 
					
				</div>   
			</div>
		</div>	
	</body>
</html>
