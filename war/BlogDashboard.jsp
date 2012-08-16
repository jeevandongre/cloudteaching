<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>DashBoard</title>
<script type="text/javascript">
function ResetAll()
{
   var pst=document.getElementById("postlayer").style;
   var m=document.getElementById("mail_gadget").style;
   var d=document.getElementById("docs_gadget").style;
   var c=document.getElementById("consga").style;
   pst.visibility="hidden";
   m.visibility="hidden";
   d.visibility="hidden";
   c.visibility="hidden";
   var x=document.getElementById("searchweb").style;
	x.visibility="hidden";
}
function LoadPost()
{
  var pst=document.getElementById("postlayer").style;
  var m=document.getElementById("mail_gadget").style;
  var d=document.getElementById("docs_gadget").style;
  var c=document.getElementById("consga").style;
   pst.visibility="visible";
   m.visibility="hidden";
   d.visibility="hidden";
   c.visibility="hidden";
   var x=document.getElementById("searchweb").style;
	x.visibility="hidden";
}
function LoadDisp()
{
 window.location="/PrintPostServlet";
}
function LoadMail()
{
  var m=document.getElementById("mail_gadget").style;
  var pst=document.getElementById("postlayer").style;
  var d=document.getElementById("docs_gadget").style;
  var c=document.getElementById("consga").style;
   m.visibility="visible";
   pst.visibility="hidden";
   d.visibility="hidden";
   c.visibility="hidden";
   var x=document.getElementById("searchweb").style;
	x.visibility="hidden";
}
function LoadDocs()
{
  var d=document.getElementById("docs_gadget").style;
   d.visibility="visible";
   var m=document.getElementById("mail_gadget").style;
   var pst=document.getElementById("postlayer").style;
   var c=document.getElementById("consga").style;
   pst.visibility="hidden";
   m.visibility="hidden";
   c.visibility="hidden";
   var x=document.getElementById("searchweb").style;
	x.visibility="hidden";
}
function LoadContacts()
{
  var c=document.getElementById("consga").style;
   c.visibility="visible";
   var m=document.getElementById("mail_gadget").style;
   var pst=document.getElementById("postlayer").style;
   var d=document.getElementById("docs_gadget").style;
   pst.visibility="hidden";
   m.visibility="hidden";
   d.visibility="hidden";
   var x=document.getElementById("searchweb").style;
	x.visibility="hidden";
}
function Search()
{
	var x=document.getElementById("searchweb").style;
	x.visibility="visible";
	var pst=document.getElementById("postlayer").style;
	  var m=document.getElementById("mail_gadget").style;
	  var d=document.getElementById("docs_gadget").style;
	  var c=document.getElementById("consga").style;
	  pst.visibility="hidden";
	   m.visibility="hidden";
	   d.visibility="hidden";
	   c.visibility="hidden";
}
</script>
</head>
<body bgcolor="#FF9966">
<center><h1>DASHBOARD</h1></center>

<div style="position:absolute; left: 394px; top: 53px;">
<table>
   <tr>
      <td><input type="button" value="HOME" id="home" onclick="ResetAll()"/></td>
      <td><input type="button" value="POST" id="postmsg" onclick="LoadPost()"/></td>
	   <td><input type="button" value="DISPLAY" id="dispmsg" onclick="LoadDisp()"/></td>
	   <td><input type="button" value="MAIL" id="mail" onclick="LoadMail()"/></td>
	   <td><input type="button" value="DOCS" id="docs" onclick="LoadDocs()"/></td>
       <td><input type="button" value="CONTACTS" id="cons" onclick="LoadContacts()"/></td>
       <td><input type="button" value="GOOGLE" id="srchbtn" onclick="Search()"/></td>
   </tr></table>
</div>

<div id="postlayer" style="position:absolute; left: 298px; top: 125px; width: 476px;visibility:hidden " >
<form id="postform" action="/PostBlogServlet" method="get">
<table><tr>
<td>
<input type="text" name="title"/></td></tr>
<tr><td>
<textarea rows="10" cols="100" name="content"></textarea>
</td></tr>
<tr><td>
<input type="submit" value="INSERT" />
</td></tr>
</table>
</form>
</div>
<div id="consga" style="position:absolute; left: 398px; top: 153px; visibility:hidden" >
<script src="http://www.gmodules.com/ig/ifr?url=http://hosting.gmodules.com/ig/gadgets/file/103004048084238050439/GoogleContacts.xml&amp;synd=open&amp;w=800&amp;h=600&amp;title=Google+Contact+Manager&amp;border=%23ffffff%7C3px%2C1px+solid+%23999999&amp;output=js"></script>
</div>
<div id="docs_gadget" style="position:absolute; left: 398px; top: 153px; visibility:hidden">
<script src="http://www.gmodules.com/ig/ifr?url=http://www.google.com/ig/modules/docs.xml&amp;up_numDocuments=7&amp;synd=open&amp;w=800&amp;h=600&amp;title=__DOCS___&amp;lang=en&amp;country=ALL&amp;border=%23ffffff%7C3px%2C1px+solid+%23999999&amp;output=js"></script>
</div>
<div id="mail_gadget" style="position:absolute; left: 398px; top: 166px; visibility:hidden">
<script src="http://www.gmodules.com/ig/ifr?url=http://hosting.gmodules.com/ig/gadgets/file/117682992310236391329/gmaillatest.xml&amp;synd=open&amp;w=800&amp;h=600&amp;title=Gmail+inbox+&amp;border=%23ffffff%7C3px%2C1px+solid+%23999999&amp;output=js"></script>
</div>
<div id="searchweb" style="position:absolute; left: 398px; top: 153px; visibility:hidden">
<div id="cse" style="width: 100%;">Loading</div>
<script src="http://www.google.com/jsapi" type="text/javascript"></script>
<script type="text/javascript">
  google.load('search', '1', {language : 'en'});
  google.setOnLoadCallback(function(){
    var customSearchControl = new google.search.CustomSearchControl('016247242372324565882:evanrzfvfao');
    customSearchControl.setResultSetSize(google.search.Search.FILTERED_CSE_RESULTSET);
    customSearchControl.draw('cse');
  }, true);
</script>
<link rel="stylesheet" href="http://www.google.com/cse/style/look/default.css" type="text/css" />
</div>
</body>
</html>