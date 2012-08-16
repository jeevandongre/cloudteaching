<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Registration</title>
</head>
<body bgcolor="#FF9966">
<div style="position:absolute; left: 467px; top: 59px;"><h1>
  <span class="style1">New User Registration form</span></div>
<div style="position:absolute; left: 466px; top: 141px;">
<form action="/RegisterLogin" method="get">

<table>
<tr>
<td>Gmail ID: </td>
<td><input type="text" name="txtemail"/></td>
</tr>
<tr>
<td>Password: </td>
<td><input type="password" name="txtpassword"/></td>
</tr>
</table>
</div>
<div style="position:absolute; left: 531px; top: 208px;">
<input type="submit" value="Register" /></div>
<div style="position:absolute; left: 605px; top: 207px;">
<input type="reset" value="Canel"/></div>
</form>
</body>
</html>