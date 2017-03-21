<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HUNARMAND</title>
</head>
<body>
<jsp:useBean id="obj3" class="qrcode.LogInBean">
   <jsp:setProperty name="obj3" property="*" />
   </jsp:useBean>
   
   <%
   boolean status=obj3.validate();  
   if(status){  
	   response.sendRedirect("_postadmin.jsp");
   }
   else{
	   response.sendRedirect("login-form.html");
   }
   
   %>

</body>
</html>