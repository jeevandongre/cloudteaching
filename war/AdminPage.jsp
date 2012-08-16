<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Admin Page</title>
<script type="text/javascript">
function ShowForm(){
 var x=document.getElementById("Myform").style;
 x.visibility="visible";
}

	
</script>
</head>
<body bgcolor="#FF9966">
<div style="position:absolute; width: 513px; left: 294px; top: 30px;"><img src="/cloud1.JPG" width="513" height="128" /></div>
<p>&nbsp;</p>
<p><span style="position:absolute; left: 61px; top: 177px; width: 85px;">
  <input type="button" name="Register" width="150" value="RegisterFaculty" onclick="ShowForm();"/>
  </span>
  <span style="position:absolute; left: 66px; top: 233px;">
  <a  href="/BlogLoginServlet">Show Blog</a>
  </span>
  <form id="My1" action="/ViewUserServlet" method="post">

    <span style="position:absolute; left: 59px; top: 203px; width: 102px;">
    <input type="submit"   value="View Details"/>
    
</span>
  </form></p>
<p>&nbsp; </p>
<div id="Myform" style="visibility:Hidden">
<form id="My2" action="/RegisterStaffServlet" method="post">
<div style="position:absolute; left: 412px; top: 175px;">
<table><tr>
          <td>Name:</td>
		  <td><input type="text" name="txtname" /></td>
	  </tr>
	  <tr>
          <td>Mail ID:</td>
		  <td><input type="text" name="txtmailid" /></td>
	  </tr>
	  <tr>
	      <td><input type="submit" value="Store" /></td>
		  <td><input type="reset" value="Refresh" /></td>
      </tr>
</table>
</div>
</form>
</div>
<img src="http://code.google.com/appengine/images/appengine-silver-120x30.gif"
alt="Powered by Google App Engine" />
</body>
</html>