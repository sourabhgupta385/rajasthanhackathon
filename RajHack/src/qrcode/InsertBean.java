package qrcode;

import java.io.IOException;
import java.net.ConnectException;
import java.sql.*;
import java.security.MessageDigest;
import java.util.Formatter;

public class InsertBean {
	public String name;
	public String pass;
	public String mob_no;
	public String mail;
	public String checksum;
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getMob_no() {
		return mob_no;
	}

	public void setMob_no(String mob_no) {
		this.mob_no = mob_no;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

    public void conn() throws ClassNotFoundException, SQLException, IOException
    {
    	Connection con1=DriveManag.con;
    	String query="INSERT INTO user VALUES(?,?,?,?)";
    	PreparedStatement ps=con1.prepareStatement(query);
    	ps.setString(1,name);
    	ps.setString(2,pass);
    	ps.setString(3,mob_no);
    	ps.setString(4,mail);
    	
    	int i=ps.executeUpdate();
    	
    }
    public void check()
    {
    String x="#2&[W<nJ*K\"xO_z";	
    checksum=checksumf("HACKATHON2017|"+mob_no+"|10.00|"+x);
    System.out.println(checksumf("HACKATHON2017|"+mob_no+"|10.00|"+x));
    }	 	
    	
    public static String checksumf(final String toBeEncryptString)
    {
    		if (toBeEncryptString == null) 
    		{
    			throw new IllegalArgumentException("To be encrypt string must not be null");
    		}

    		try 
    		{
    			MessageDigest md = MessageDigest.getInstance("MD5");
    			md.update(toBeEncryptString.getBytes());
    			byte byteData[] = md.digest();
    			return byteArray2Hex(byteData);
    		} 
    		catch (Exception ex) 
    		{
    		}
    		
    		return toBeEncryptString;

    }
    		@SuppressWarnings("resource")
    	public static String byteArray2Hex(byte[] bytes) 
    		{
    			Formatter formatter = null;
    			try 
    			{
    				formatter = new Formatter();
    				byte[] arrayOfByte = bytes;
    				int j = bytes.length;
    				for (int i = 0; i < j; i++) 
    				{
    					byte b = arrayOfByte[i];
    					formatter.format("%02x", new Object[] { Byte.valueOf(b) });
    				}
    				return formatter.toString();
    			} 
    			finally 
    			{
    			}

    		}
    public String getChecksum()
    {
    	return checksum;
    }
}