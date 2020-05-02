/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import Database.dbconnector;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.Registration;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Asus
 */
public class Register extends HttpServlet {

   

     public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        response.sendRedirect("Register.jsp");
          
    }    
   
    
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        
        
       

    String customername =request.getParameter("customername");
        String vehicleno =request.getParameter("vehicleno");
        
        String vehicletype =request.getParameter("vehicletype");
        
        String contactno =request.getParameter("contactno");
        String address =request.getParameter("address");
        
         
       
       
       PrintWriter out=response.getWriter();
        
        
       
            String query="INSERT INTO register(customername,vehicleno,contactno,address,vehicletype)VALUES('"+customername+"','"+vehicleno+"','"+contactno+"','"+address+"','"+vehicletype+"')";            
                  
             Statement st=dbconnector.getStatement();
   
       int i = 0;
        try 
        {
            i = st.executeUpdate(query);
        } 
        catch (SQLException e)
        {
            out.println(e);
        }
    
            
            if(i>0)
            {
                RequestDispatcher rd=request.getRequestDispatcher("RegisterSucessful.jsp");
                rd.forward(request, response);
//                response.sendRedirect("RegisterSucessful.jsp");
            }
            else
            {
                out.println("Registration Failed.jsp");
            }
            
    
    }
}

   
