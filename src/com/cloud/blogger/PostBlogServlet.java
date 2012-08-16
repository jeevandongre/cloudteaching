package com.cloud.blogger;

import java.io.IOException;
import javax.servlet.http.*;

import com.google.gdata.client.GoogleService;
import com.google.gdata.client.Query;
import com.google.gdata.client.blogger.BloggerService;
import com.google.gdata.client.http.AuthSubUtil;
import com.google.gdata.data.DateTime;
import com.google.gdata.data.Entry;
import com.google.gdata.data.Feed;
import com.google.gdata.data.Person;
import com.google.gdata.data.PlainTextConstruct;
import com.google.gdata.data.TextContent;
import com.google.gdata.util.AuthenticationException;
import com.google.gdata.util.ServiceException;
import java.net.URL;
import java.security.GeneralSecurityException;
import com.cloud.blogger.*;
 
public class PostBlogServlet extends HttpServlet implements java.io.Serializable 
{
	
	
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException 
			{
		      resp.setContentType("text/html");
		      GoogleService gs = null;
		      gs = new GoogleService("blogger","http://sdmcloudteacher.appspot.com/");
		      HttpSession session = req.getSession();
		      
		     String sessionToken= (String) session.getAttribute("token");
		     //String sessionToken= (String) session.getValue("token");
		    // resp.getWriter().println(sessionToken);
		     resp.getWriter().println(sessionToken);
		      gs.setAuthSubToken(sessionToken);
		      String title=req.getParameter("title");
		      String content=req.getParameter("content");
		      String blogId=(String) session.getAttribute("blogid");
		      Entry postEntry=new Entry();
		      postEntry.setTitle(new PlainTextConstruct(title));
		      postEntry.setContent(new PlainTextConstruct(content));
		     
		      Person author = new Person("Cloud", null,"cloud.teaching");
		      postEntry.getAuthors().add(author);
		      //postEntry.setDraft(isDraft);
		      URL postUrl = new URL("http://www.blogger.com/feeds/" + blogId + "/posts/default");
		      try {
				gs.insert(postUrl,postEntry);
				resp.sendRedirect("/BlogDashboard.jsp");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				resp.getWriter().println(e.getMessage());
			}
		     
		}
}
