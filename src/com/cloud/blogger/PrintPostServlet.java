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
 
public class PrintPostServlet extends HttpServlet implements java.io.Serializable 
{
	
	
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException 
			{
		      resp.setContentType("text/html");
		      BloggerService myService=null;
		      myService = new BloggerService("http://sdmcloudteacher.appspot.com/");
		      HttpSession session = req.getSession();
		      String sessionToken= (String) session.getAttribute("token");
		      myService.setAuthSubToken(sessionToken);
		      
		      String blogId=(String) session.getAttribute("blogid");
		      URL feedUrl = new URL("http://www.blogger.com/feeds/" + blogId +"/posts/default");
		      
		      Feed resultFeed;
		      resp.sendRedirect(feedUrl.toString());
		      //resp.getWriter().println(blogId);
			try {
				resultFeed = myService.getFeed(feedUrl, Feed.class);
				//resp.getWriter().println(resultFeed.getTitle().getPlainText());
				
			      /*for (int i = 0; i < resultFeed.getEntries().size(); i++) {
			        Entry entry = resultFeed.getEntries().get(i);
			       
			        resp.getWriter().println(entry.getTitle().getPlainText()+ "<br>");
			        resp.getWriter().println(entry.getContent() + "<br><hr>");
			          
			        
			      }*/
			} catch (ServiceException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		      // Print the results
		      
		
		    } 
		}

