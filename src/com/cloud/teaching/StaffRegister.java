package com.cloud.teaching;
import com.google.appengine.api.datastore.Key; 
import com.google.appengine.api.users.User; 
import javax.jdo.annotations.IdGeneratorStrategy; 
import javax.jdo.annotations.PersistenceCapable; 
import javax.jdo.annotations.Persistent; 
import javax.jdo.annotations.PrimaryKey; 
import com.cloud.teaching.PMF;

@PersistenceCapable
public class StaffRegister {
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	private Key id;
	
	@Persistent
	public String StaffName;
	@Persistent
	public String MailID;
	
	public StaffRegister(String StaffName, String MailID) {
	
		this.StaffName = StaffName;
		this.MailID = MailID;
	}

	public String getStaffName() {
		return StaffName;
	}

	public void setStaffName(String staffName) {
		StaffName = staffName;
	}

	public String getMailID() {
		return MailID;
	}

	public void setMailID(String mailID) {
		MailID = mailID;
	}
	
	
	

}
