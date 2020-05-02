
<%@page import="java.sql.ResultSet"%>
<%@page import="Database.dbconnector"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.Calendar"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Registration Form</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
  font-size: 20px;
}
        </style>
    </head>
    <body bgcolor="white">
    <center>
        <h1>Welcome User...! </h1>
        <div class="container">
        <form action="Token.jsp" method="post">
   
   
            <%

                String userid = request.getParameter("userid");
                String customername = request.getParameter("customername");
                String vehicleno = request.getParameter("vehicleno");
                String vehicletype = request.getParameter("vehicletype");
                String date = request.getParameter("date");
                String time = request.getParameter("time");
                String slotno = request.getParameter("slotno");
                String TokenID = request.getParameter("TokenID");

                String floorno = request.getParameter("floorno");

                try {
                    Statement st = dbconnector.getStatement();
                    String query = "select customername,vehicleno,vehicletype from register where userid='"+userid+"'";

                    ResultSet rs = st.executeQuery(query);

                    if (rs.next()) {

                        customername = rs.getString(1);
                        vehicleno = rs.getString(2);
                        vehicletype = rs.getString(3);

                    }
                    String query1 = "select floorno,slotno from status where status='free' and vehicletype='"+vehicletype+"'";

                    rs = st.executeQuery(query1);
                    if (rs.next()) {
                        floorno = rs.getString(1);
                        slotno = rs.getString(2);
                    }

                    String query2 = "Select TokenID from tokengenerator ORDER BY TokenID DESC limit 0,1";
                    rs = st.executeQuery(query2);
                    if (rs.next()) {
                        TokenID = rs.getString(1);
                    }

                    String query3 = "INSERT INTO tokengenerator(customername,vehicleno,vehicletype,date,time,floorno,slotno,currenttimemilis) VALUES ('"+customername+"','"+vehicleno+"','"+vehicletype+"','"+date+"','"+time+"','"+floorno+"','"+slotno+"','"+System.currentTimeMillis()+"') ";

                    int i = st.executeUpdate(query3);

            if (i > 0) 
            {
                
                    String query4="Update parking1.status set status='busy' where slotno='"+slotno+"'";
                   
                   int j=st.executeUpdate(query4);
                    if(j>0)
                    {
            %>

            <table width="400" height="500">
                <tr>
                    <td><B>Token ID :</B></td>
                    <td><%=TokenID%></td>
                </tr>
                <tr>
                    <td><B>Customer Name :</B></td>
                    <td><%=customername%></td>
                </tr>                
                <tr>
                    <td><B>Vehicle No :</B></td>
                    <td><%=vehicleno%></td>
                </tr>
                <tr>
                    <td><B>Vehicle Type :</B></td>
                    <td><%=vehicletype%></td>
                </tr>
                <tr>
                    <td><B>Date :</B></td>
                    <td><%=date%></td>
                </tr>
                <tr>
                    <td><B>Time :</B></td>
                    <td><%=time%></td>
                </tr>
                <tr>
                    <td><B>Floor Number :</B></td>
                    <td><%=floorno%></td>
                </tr>
                <tr>
                    <td><B>Slot Number :</B></td>
                    <td><%=slotno%></td>
                </tr>
                
                <td><input type="submit" formaction="Home.jsp" value="Home"/></td>

            <%                    
                 }
                else
                {
                    System.out.println("Record Not Inserted");
                }
            }
            else
            {
                out.println("No Slot free");
              
            }
        }   


                catch (SQLException e) 
                {
                    out.println(e);
                }

            %>
            </div>
            </form>
        </body>
</html>
</table>
</html>

