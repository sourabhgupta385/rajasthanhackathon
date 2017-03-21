package qrcode;

import java.sql.*;

public class DriveManag {
public static Connection con;
static 
{
	try
	{
		Class.forName("com.mysql.jdbc.Driver"); 
    	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/raj","root","london");
	System.out.println("driver loaded successfully");
	}
	catch(ClassNotFoundException|SQLException e)
	{
		e.printStackTrace();
	}
	}
}
