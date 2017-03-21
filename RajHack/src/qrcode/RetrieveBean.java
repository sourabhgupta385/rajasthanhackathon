package qrcode;

import java.io.IOException;
import java.sql.*;
public class RetrieveBean {
	String username,subject,content;
	public void connret() throws ClassNotFoundException, SQLException, IOException
    {
    	Connection con1=DriveManag.con;
    	String query="SELECT * FROM post ";
    	PreparedStatement ps=con1.prepareStatement(query);
        ResultSet rs=ps.executeQuery(query);
        while(rs.next())
        {
        	String username=rs.getString("username");
        	String subject=rs.getString("subject");
        	String content=rs.getString("content");
        
        	System.out.println(username);
        	System.out.println(subject);
        	System.out.println(content);
        
        
        }
    }
	public String getUsername() {  
		return username;  
	}
	public String getSubject() {  
		return subject;  
	}
	public String getContent() {  
		return content;  
	}
	
}