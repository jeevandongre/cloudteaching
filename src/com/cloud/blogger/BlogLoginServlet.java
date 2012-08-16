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
 
public class BlogLoginServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		resp.setContentType("text/html");
		String next = "http://sdmcetcon1.appspot.com/Dashboard1.jsp";
		String scope = "http://www.blogger.com/feeds/";
		boolean secure = false;
		boolean session = true;
		String authSubLogin = AuthSubUtil.getRequestUrl(next, scope, secure, session);
		resp.sendRedirect(authSubLogin);
	}
	
}
