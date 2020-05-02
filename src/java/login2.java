/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Asus
 */
public class login2 extends HttpServlet {

   
 public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        response.sendRedirect("login2.jsp");
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        
        
        if(username!=null && password!=null && !username.equals("") && !password.equals("") && username.equalsIgnoreCase("admin") && password.equals("admin"))
       
        { 
            
            
            response.sendRedirect("Tokenid.jsp");
        }
        else
        {
            response.sendRedirect("login2.jsp");
        }
    }        

    }