<%@page import="java.sql.ResultSet"%>
<%@page import="Database.dbconnector"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.Calendar"%>
<!DOCTYPE html>
<%!
        Calendar calendar=calendar = Calendar.getInstance();
    String getCurrentDate()
    {
        int day=calendar.get(Calendar.DATE);
        int month=calendar.get(Calendar.MONTH)+1;
        int year=calendar.get(Calendar.YEAR);
        String currentDate=day+"-"+month+"-"+year;
        System.out.println("Date = "+currentDate);
        return currentDate;
    }
    String getCurrentTime()
    {
        String currentTime=calendar.get(Calendar.HOUR)+":"+calendar.get(Calendar.MINUTE)+":"+calendar.get(Calendar.SECOND);
        return currentTime;
    }

%>
<html>
    <head>
        <title>Registration Form</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
         <link href="style.css" rel="stylesheet" type="text/css" />

        <style>

            body {font-family: Arial, Helvetica, sans-serif;}
            * {box-sizing: border-box;}

            input[type=text], select, textarea {
                width: 60%;
                padding: 16px;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;
                margin-top: 6px;
                margin-bottom: 16px;
                resize: vertical;
            }
            input[type=submit] {
                background-color:green;
                color: white;
                padding: 16px 20px;
                border: none;
                border-radius: 4px;
                cursor: pointer;
            }

            input[type=submit]:hover {
                background-color: #45a049;
            }

           container {
  border-radius: 10px;
  background-color:green;
  padding: 60px;
  margin-left: 30%;
  margin-right:30%;
  
}
        </style>
    </head>
    <body bgcolor="white">
    <center>
        <h1>Welcome User...! </h1>
        <div class="container">
        <form action="Token.jsp" method="post">
        <table width="600">
                
           
     <%
                    String userid  = request.getParameter("userid");
                    if (userid==null) 
                    {
                        response.sendRedirect("Userid.jsp");
                    }

                    Statement st = null;
                    try 
                    {
                        st = dbconnector.getStatement();

                        String query = "select customername,vehicleno,vehicletype from register where userid='"+userid+"'";

                        ResultSet rs = st.executeQuery(query);

                        while (rs.next()) 
                        {
                %>           
                <tr>
                    <td><B>Customer name:</B></td>

                    <td><input type="text" name="customername" value="<%=rs.getString(1)%>"</td>
                    <td> <input type="hidden" name="userid" value="<%=userid%>"/></td>
                    
                </tr></tr>
                <tr>
                    <td><B>Vehicle no:</B></td>
                <td><input type="text" name="vehicleno" value="<%=rs.getString(2)%>"/></td></br>
                </tr></tr>
                <tr>
                    <td><B>Vehicle type:</B></td>
                <td><input type="text" name="vehicletype" value="<%=rs.getString(3)%>"/></td></br>
                    
                </tr>
                <tr>
                    <td><B>Date:</B></td>
                <td><input type="text" name="date" value="<%=getCurrentDate()%>"/></td></br>
                </tr>
                <tr>
                    <td><B>Time:</B></td>
                <td><input type="text" name="time" value="<%=getCurrentTime()%>"/></td></br>
                </tr>
                    
                    <td> <input type="submit" value="Back" formaction="Userid.jsp"/></td>
             
                
                    <td> <input type="submit" value="Get token" formaction="Token.jsp"/></td>
                
                <%
                        } 
                    } 
                    catch (SQLException e)
                    {
                        out.println(e);
                    }
                %>
        </table>
        </form>
                </div>
            
        
       
    </center>
    </body>
</html>

