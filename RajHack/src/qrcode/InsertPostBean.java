package qrcode;

import java.io.IOException;
import java.net.ConnectException;
import java.sql.*;
import java.security.MessageDigest;
import java.util.Formatter;

public class InsertPostBean {
	public String uwername;
	public String subject;
	public String content;
	
	public String getUwername() {
		return uwername;
	}
	public void setUwername(String uwername) {
		this.uwername = uwername;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	
	    public void connn() throws ClassNotFoundException, SQLException, IOException
    {
    	Connection con1=DriveManag.con;
    	String query="INSERT INTO post VALUES(?,?,?)";
    	PreparedStatement ps=con1.prepareStatement(query);
    	ps.setString(1,uwername);
    	ps.setString(2,subject);
    	ps.setString(3,content);
    	
    	int i=ps.executeUpdate();
    	
    }
}
