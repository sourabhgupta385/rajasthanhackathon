package qrcode;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LogInBean {  
	private String username,password;  
  
	public String getUsername() {  
		return username;  
	}  
  
	public void setUsername(String username) {  
		this.username = username;  
	}  
  
	public String getPassword() {  
		return password;  
	}  
  
	public void setPassword(String password) {  
		this.password = password;  
	}  
	
	public boolean validate(){  
		if(username.equals("admin") && password.equals("government"))
		{
			return true;
		}
		else
		{
			return false;
		}
	}
  
}  