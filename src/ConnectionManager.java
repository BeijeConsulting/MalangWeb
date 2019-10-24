import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionManager {
	static Connection con;
    static String url;
          
    public static Connection getConnection()
    {
      
       try
       {
    	   Class.forName("com.mysql.cj.jdbc.Driver"); 
          // assuming "DataSource" is your DataSource name

          
          
          try
          {            	
        	  Class.forName("com.mysql.cj.jdbc.Driver");
  			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/malang?serverTimezone=CET", "root", "Beije06"); 
              								
          // assuming your SQL Server's	username is "username"               
          // and password is "password"
               
          }
          
          catch (SQLException ex)
          {
             ex.printStackTrace();
          }
       }

       catch(ClassNotFoundException e)
       {
          System.out.println(e);
       }

    return con;
}
}
