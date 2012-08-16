package com.cloud.teaching;

import java.io.IOException;

import javax.jdo.PersistenceManager;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.appengine.api.users.UserService;
import com.google.appengine.api.users.UserServiceFactory;
import java.util.List;

@SuppressWarnings("serial")
public class CheckUserServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		resp.setContentType("text/html");
		UserService users = UserServiceFactory.getUserService();	
		String s=users.getCurrentUser().getEmail();
      if(users.isUserAdmin())
      { resp.getWriter().println("Admin Logged");
       
         resp.sendRedirect("/AdminPage.jsp");
      }
      else
      {   
    	  
    	  resp.getWriter().println(s);
    	  PersistenceManager pm = PMF.get().getPersistenceManager(); 
    	  
    	  int indOfSep;
    	  String id = users.getCurrentUser().getEmail();
    	  
    	  if(id.contains("@"))
    	  {
    		  indOfSep = id.indexOf("@");
    		  id = id.substring(0, indOfSep);
    	  }
    	  
    	      
              String query = "SELECT  FROM "+ StaffRegister.class.getName() + " WHERE MailID=='" + id +"'";
             
             List<StaffRegister> sf1;
             sf1 = (List<StaffRegister>) pm.newQuery(query).execute();
              if(!sf1.isEmpty()) {
              
              
                     resp.getWriter().println("Faculty logged: " + sf1.get(0).getStaffName());
                     resp.sendRedirect("/BlogLoginServlet");
            	  }
              else
              {
            	  resp.sendRedirect("/Options.html");
            	 
              }
                    	  
              
      
              pm.close();

             
              
              
	       
      }
          
	}
}