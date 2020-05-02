/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import Database.dbconnector;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Asus
 */
public class Userid1 extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        response.sendRedirect("Userid.jsp");
           
    }
     public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
     {
         String userid=request.getParameter("userid");
         String customername=request.getParameter("customername");
         String vehicleno=request.getParameter("vehicleno");
         String vehicletype=request.getParameter("vehicletype");
          PrintWriter out=response.getWriter();
          
          String query="select customername,vehicleno,vehicletype  from register where userid='"+userid+"'";
          out.println("Query="+query);
          Statement st=dbconnector.getStatement();
        try {
            ResultSet rs=st.executeQuery(query);
            while(rs.next());
            {
                
                customername=rs.getString(1);
                vehicleno=rs.getString(2);
                vehicletype=rs.getString(3);
              
                
            }
      }
        
        catch (SQLException e) 
        {
            out.println(e);
        }
           
     }
}