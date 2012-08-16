<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<%@ page import="com.google.gdata.client.GoogleService" %>
<%@ page import="com.google.gdata.client.Query" %>
<%@ page import="com.google.gdata.client.blogger.BloggerService" %>
<%@ page import="com.google.gdata.client.http.AuthSubUtil" %>
<%@ page import="com.google.gdata.data.DateTime" %>
<%@ page import="com.google.gdata.data.Entry" %>
<%@ page import="com.google.gdata.data.Feed" %>
<%@ page import="com.google.gdata.data.Person" %>
<%@ page import="com.google.gdata.data.PlainTextConstruct" %>
<%@ page import="com.google.gdata.data.TextContent" %>
<%@ page import="com.google.gdata.util.AuthenticationException" %>
<%@ page import="com.google.gdata.util.ServiceException" %>
<%@ page import="java.net.URL" %>
<%@ page import="java.security.GeneralSecurityException" %>
<%@ page import="com.cloud.blogger.*"%>
<%@ page import="com.google.gdata.data.Entry" %>
<%@ page import="java.io.IOException" %>
<%@ page import="com.google.gdata.data.PlainTextConstruct" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>DashBoard</title>
</head>
<body bgcolor="#FF9966">
<center><h1>DASHBOARD</h1></center>
<%
    String authSubURL=request.getQueryString();
    String token = AuthSubUtil.getTokenFromReply(authSubURL);
    String sessionToken = null;
%>
<%
String sessionid=null,blogin=null;
if(request.getMethod().equals("POST"))
{
	
	
	sessionid= request.getParameter("sessionvar");
	blogin=request.getParameter("bloglist");
	session.setAttribute("blogid",blogin);
	session.setAttribute("token",sessionid);
	response.sendRedirect("/BlogDashboard.jsp");
	 }%>
<%
     try {
	       sessionToken = AuthSubUtil.exchangeForSessionToken(token,null);
	     } catch (AuthenticationException e1) {
				e1.printStackTrace();
           } catch (GeneralSecurityException e1) {
				e1.printStackTrace();
           }
    String sessionUrl=request.getQueryString();
    GoogleService gs = null;
    gs = new GoogleService("blogger","http://sdmcloudteaching.appspot.com/");
    gs.setAuthSubToken(sessionToken);
      
    final URL feedUrl = new URL("http://www.blogger.com/feeds/default/blogs");
    Feed resultFeed;
    try {
	      resultFeed = gs.getFeed(feedUrl, Feed.class);
          String rtf=resultFeed.getTitle().getPlainText();
          %>
          <p> <%=rtf %></p>
    <div id="home1" style="position:absolute; left: 46px; top: 94px;">
	<form name="form2" method="post">
	<table>
<tr>

<td>
<h2>Select Blogs List:
<input type="hidden" name="sessionvar"  id="sessionvar" value="<%=sessionToken%>"/>
<select name="bloglist" id="bloglist">
	<%  
	  for (int i = 0; i < resultFeed.getEntries().size(); i++)
	  {
	    Entry entry = resultFeed.getEntries().get(i);
	    String temp2=entry.getTitle().getPlainText();  
	  %>  
	   <option value="<%=entry.getId().split("blog-")[1]%>"><%=temp2 %> </option>

	 <% }}
	 catch(Exception e){}%>
	  </select></h2>
</td>
<td>

<input type="submit" name="go" value="GO" />

</td>
</tr>
<tr><td><a href="http://www.blogger.com/">Create blog</a></td></tr>

</table>
</form>
</div> 
</body>
</html>