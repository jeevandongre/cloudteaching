<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.google.appengine.api.users.User" %>
<%@ page import="com.google.appengine.api.users.UserService" %>
<%@ page import="com.google.appengine.api.users.UserServiceFactory" %>

    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Insert title here</title>
</head>
<body>
<%
    UserService userService = UserServiceFactory.getUserService();
    User user=userService.getCurrentUser();
  
%>
<%
if(user!=null)
{
	 
	%>
  Hello ... user <%=user.getNickname() %>
  
<% 
}
else
{
	%>
	please proceed through login 
	<a href="<%=userService.createLoginURL(request.getRequestURI()) %>">Login</a>
	<% }%>

</body>
</html>