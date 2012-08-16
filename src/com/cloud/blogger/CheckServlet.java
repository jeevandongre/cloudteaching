package com.cloud.blogger;

import java.io.IOException;
import javax.servlet.http.*;
import javax.swing.text.Utilities;

import com.google.appengine.tools.admin.Utility;
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



@SuppressWarnings("serial")
public class CheckServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		resp.setContentType("text/html");
		String authSubURL=req.getQueryString();
		//resp.getWriter().println(authSubURL);
		String token = AuthSubUtil.getTokenFromReply(authSubURL);
		String sessionToken = null;
		try {
			sessionToken = AuthSubUtil.exchangeForSessionToken(token,null);
			resp.sendRedirect("/Dashboard1.jsp");
		
			//resp.getWriter().println(sessionToken);
		} catch (AuthenticationException e1) {
						e1.printStackTrace();
		} catch (GeneralSecurityException e1) {
						e1.printStackTrace();
		}
		
			
	  
			
	}
	
	String parseForToken(String URL)
	{
		int nextInd = URL.indexOf("=");
		String token = URL.substring(nextInd, URL.length());
		
		return token;
	}
}
