package ParkingSystem;
import java.sql.*;

public class DBConnector 
{
    static Connection con=null;
    static Statement st=null;
    
    static
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Driver Loaded");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/parking","root","root");
            System.out.println("Connected");
            st=con.createStatement();
        }
        catch(ClassNotFoundException e)
        {
            System.out.println(e);
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
    }
    static Statement getStatement()
    {
        return st;
    }

}
