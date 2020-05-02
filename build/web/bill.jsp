<%-- 
    Document   : bill
    Created on : Jan 11, 2020, 2:00:39 PM
    Author     : Asus
--%>
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
                background-color: #4CAF50;
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
  background-color:cornsilk;
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
            <form action="BillGeneration.jsp" method="post">
        <table width="600">
                

          <%
                    String TokenID  = request.getParameter("TokenID");
                    if (TokenID==null) 
                    {
                        response.sendRedirect("Tokenid.jsp");
                    }

                    Statement st = null;
                    try 
                    {
                        st = dbconnector.getStatement();

                        String query = "select customername,vehicleno,vehicletype,Date,Time,floorno,slotno from tokengenerator where TokenID='"+TokenID+"'";

                        ResultSet rs = st.executeQuery(query);

                        while (rs.next()) 
                        {
                %>           
                <tr>
                    <td><B>Customer name:</B></td>

                    <td><input type="text" name="customername" value="<%=rs.getString(1)%>"</td>
                    <td> <input type="hidden" name="TokenID" value="<%=TokenID%>"/></td>
                    
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
                <td><input type="text" name="date" value="<%=rs.getString(4)%>"/></td></br>
                </tr>
                
                <tr>
                    <td><B>Time:</B></td>
                <td><input type="text" name="time" value="<%=rs.getString(5)%>"/></td></br>
                </tr>

                <td><B>Floor No:</B></td>
                <td><input type="text" name="floorno" value="<%=rs.getString(6)%>"/></td></br>
                </tr>
                <td><B>Slot No:</B></td>
                <td><input type="text" name="slotno" value="<%=rs.getString(7)%>"/></td>
                </tr>
                <tr>
                    <td><B>Dept_date:</B></td>
                <td><input type="text" name="time" value="<%=getCurrentDate()%>"/></td></br>
                </tr>
                <tr>
                    <td><B>Dept_time:</B></td>
                <td><input type="text" name="time" value="<%=getCurrentTime()%>"/></td></br>
                </tr>
           <tr>
                    <td> <input type="submit" value="Caculate and GenerateBill" formaction="BillGeneration.jsp"/></td>
                </tr>
                <%
                        } 
                    } 
                    catch (SQLException e)
                    {
                        out.println(e);
                    }
                %>
        
</div>
            </table>
        </form>
       
    </center>
    </body>
</html>      