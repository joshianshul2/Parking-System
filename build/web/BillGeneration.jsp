<%-- 
    Document   : BillGeneration
    Created on : Jan 11, 2020, 2:06:56 PM
    Author     : Asus
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="Database.dbconnector"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.Calendar"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       
        <title>Registration Form</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
         <link href="style.css" rel="stylesheet" type="text/css" />

        <style>

           
           .container {
  border-radius: 10px;
  background-color:cornsilk;
  padding: 60px;
  margin-left: 30%;
  margin-right:30%;
  font-size: 15px;
}
.button {
  background-color:green;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin:4px 2px;
  cursor: pointer;
            }
        </style>
    </head>
    <body bgcolor="white">
    <center>
        <h1>Welcome User...! </h1>
        <div class="container">
        <form>
   
   <%
                String customername=request.getParameter("customername");
                String vehicleno=request.getParameter("vehicleno");
                String TokenID=request.getParameter("TokenID");
                String slotno=request.getParameter("slotno");
                String currenttimemilis1="0";
                String currenttimemilis2="0";
             
        try
        {
String query="select currenttimemilis from tokengenerator where TokenID='"+TokenID+"'";
        ResultSet rs;
         
      
            Statement st = dbconnector.getStatement();
        rs=st.executeQuery(query);
            while(rs.next())
            {
               
                currenttimemilis1=rs.getString(1);
                currenttimemilis2=String.valueOf(System.currentTimeMillis());

                }
            long time1=Long.parseLong(currenttimemilis1);
            long time2=Long.parseLong(currenttimemilis2);
            
            long time3=time2-time1;
            time3=time3/3600000+1;
            long cost=time3*25;
            
            String query2="update parking1.status set status='free' where slotno='"+slotno+"'";
            int i=dbconnector.getStatement().executeUpdate(query2);
            if(i>0)
            {
                %>
               <table width="400" height="300">
                <tr>
                    <td><B>Customer name :</B></td>
                    <td><%=customername%></td>
                </tr>
                              
                <tr>
                    <td><B>Vehicle No :</B></td>
                    <td><%=vehicleno%></td>
                </tr>
                <tr>
                    <td><B>Total Amount :</B></td>
                    <td><%=(String.valueOf(cost))%></td>
                </tr> 
                <tr>
                <td>  <button class="button" formaction="Home.jsp">Home</button></td>
                </tr>
              
            
           <% }
            else
            {
                System.out.println("not Updated");
            }
            
            
          } 
        catch (SQLException e) 
        {
            System.out.println(e);
        }










                %>
                </div>
            </table>
        </form>
    </body>
    
