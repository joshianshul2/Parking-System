<%-- 
    Document   : RegisterSucessful
    Created on : Jan 25, 2020, 1:57:10 AM
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="style.css" rel="stylesheet" type="text/css" />
        <style>
        .container {
  border-radius: 10px;
  background-color:cornsilk;
  padding: 60px;
  margin-left: 30%;
  margin-right:30%;
  font-size: 20px;
}
</style>
    </head>
    <body>
    <center>
        <h1>Hello World!</h1>
        <div class="container"
        <form>
        <%

                String customername = request.getParameter("customername");
                String vehicleno = request.getParameter("vehicleno");
                String contactno = request.getParameter("contactno");
                String address = request.getParameter("address");
                String vehicletype = request.getParameter("vehicletype");
                try
                {
                Statement st=dbconnector.getStatement();
        String query="select userid from register where customername='"+customername+"'and vehicleno='"+vehicleno+"' and contactno='"+contactno+"' and address='"+address+"' and vehicletype='"+vehicletype+"'";
        System.out.println("Query = "+query);
    ResultSet  rs = st.executeQuery(query);
            while(rs.next())
            {
                
               %>
                <table width="200" height="100">
                    <tr>
                        <td><B>Registered ID: </B></td>
                        <td><%=rs.getString(1)%></td>
                    </tr>
                </table>
               <%
            }
        }

         catch(SQLException e)
        {
          System.out.println(e);
        }
       
%>
      </form>       
    </body>
</html>
