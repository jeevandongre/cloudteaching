package com.cloud.teaching;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.*;

import com.google.appengine.api.users.User;
import com.google.appengine.api.users.UserService;
import com.google.appengine.api.users.UserServiceFactory;
import javax.jdo.PersistenceManager;
import com.cloud.teaching.PMF;
import com.cloud.teaching.StaffRegister;




@SuppressWarnings("serial")
public class ViewUserServlet extends HttpServlet {
	
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
	throws IOException {
		resp.setContentType("text/html");
		resp.getWriter().println("<h1><center>THE LIST OF FACULTY</H1>");
		resp.getWriter().println("<center><table border=1><tr><td><b>Name</b></td><td><b>E-Mail ID</b></td></tr>");
		PersistenceManager pmd=PMF.get().getPersistenceManager();
		String query = "select  from " + StaffRegister.class.getName(); 
        List<StaffRegister> dms2 = (List <StaffRegister>) pmd.newQuery(query).execute(); 
        for(int i=0;i<dms2.size();i++)
        {
        resp.getWriter().println("<tr><td>"+dms2.get(i).StaffName+"</td>");
        resp.getWriter().println("<td>"+dms2.get(i).MailID+"</td></tr>");
        }
        resp.getWriter().println("</table></center>");
        pmd.close();
	}
}