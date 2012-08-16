package com.cloud.teaching;

import java.io.IOException;

import javax.jdo.PersistenceManager;
import javax.servlet.http.*;
import java.util.List;
import com.cloud.teaching.PMF;

@SuppressWarnings("serial")
public class RegisterStaffServlet extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		resp.setContentType("text/plain");
		
		String name=req.getParameter("txtname");
	
		String mails=req.getParameter("txtmailid");
		if(mails.contains("@"))
			mails = mails.substring(0, mails.indexOf("@"));
		PersistenceManager pmd=PMF.get().getPersistenceManager();
		StaffRegister Staffreg=new StaffRegister(name,mails);
		
		 try { 
	            pmd.makePersistent(Staffreg); 
	            } finally { }
	
		resp.getWriter().println("Data is Stored succesfully .....");
		resp.sendRedirect("/AdminPage.jsp");
        pmd.close();
}
		
	}

