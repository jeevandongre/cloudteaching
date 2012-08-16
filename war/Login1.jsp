<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.google.appengine.api.users.User" %>
<%@ page import="com.google.appengine.api.users.UserService" %>
<%@ page import="com.google.appengine.api.users.UserServiceFactory" %>

<html>
  <body leftmargin="0" marginheight="0" marginwidth="0" rightmargin="0" topmargin="0" bgcolor="#FF9966">
 <%
      //this is our first page to be loaded
     UserService userService = UserServiceFactory.getUserService();
     if (!userService.isUserLoggedIn())
     {
   %>
      Login through Google Accounts <a href="<%=userService.createLoginURL("/CheckUserServlet")%>">log in</a>>
   <% } else { %>
      Welcome, <%= userService.getCurrentUser().getNickname() %>!
        (<a href="<%=userService.createLogoutURL("/")%>">log out</a>>)
   <%
     }
   %>
 
 <br/>
<br/>
 <center><table cellpadding="0" cellspacing="0" height="100%" border="0">
	<tr>
		<td height="100%" valign="top" style="padding-top: 10px;">
		
	<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,0,0" width="800" height="600" id="flash" align="middle">
		
	<param name="allowScriptAccess" value="sameDomain" />
	
	<param name="allowFullScreen" value="false" />
	
	<param name="bgcolor" value="#ffffff" />
			
	<embed src="flash.swf" quality="high" bgcolor="#ffffff" width="800" height="600" name="flash" align="middle" allowScriptAccess="sameDomain" allowFullScreen="true" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />
		
	</object>
	
</td>
	</tr>
</table></center>
 
 


</body>
</html>
