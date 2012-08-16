<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.google.appengine.api.users.User" %>
<%@ page import="com.google.appengine.api.users.UserService" %>
<%@ page import="com.google.appengine.api.users.UserServiceFactory" %>

<html>
  <body>
<div style="position:absolute; left: 379px; top: 43px;"><img src="/cloud1.JPG" width="534" height="128" /></div>

<%
    UserService userService = UserServiceFactory.getUserService();
    User user = userService.getCurrentUser();
    
    if (user != null) {
%>


<p>Hello Wel-come , <%= user.getNickname() %>
</p>
<p><a href="<%= userService.createLogoutURL(request.getRequestURI()) %>" >Sign out</a></p>
<%}else {
	response.sendRedirect(userService.createLoginURL(request.getRequestURI()));
	String x=user.getEmail();
	
   %>
	
%>
  ! Hello  .... <%= user.getNickname() %>
  Email Address:<%=x %>
 
<p><a href="<%= userService.createLogoutURL(request.getRequestURI()) %>">sign out</a></p>
<% } %>
  </body>
</html>
