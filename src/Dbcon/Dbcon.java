package Dbcon;

import java.sql.Connection;
import java.sql.DriverManager;

public class Dbcon {
	
	static Connection con;

	public static Connection create(){
		try{
			Class.forName("com.mysql.jdbc.Driver");  
				con=DriverManager.getConnection("jdbc:mysql://localhost:3306/collegeevent","root","root");	 
		}catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return con;


}
}
