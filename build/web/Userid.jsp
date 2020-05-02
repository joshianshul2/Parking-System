<%-- 
    Document   : Register
    Created on : Jan 9, 2020, 12:08:29 AM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        c  <title>JSP Page</title>
        <style>
        body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

input[type=text], select, textarea {
  width: 80%;
  padding: 16px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}

.button
{
    align-self: left;
}
.container {
  border-radius: 10px;
  background-color: white;
  padding: 60px;
  margin-left: 30%;
  margin-right:30%;
  
}
</style>

    </head>
    <body background="image/parkingimage3.jpg" bgcolor="white">
        <br><br><br><br><br> <br><br><br><br> 
    <center> 
        <div class="container">
            
      <form action="onetimeuser.jsp" method="post">
          <table>
          <tr>
              <td> <button type="submit" formaction="Register.jsp">User Registration</button></td>
      </tr>
      <tr>
          <td><label for="userid"><b>User ID:</b></label></td>


    <td> <input type="text" placeholder="Enter Userid" name="userid"/></td>
</tr>                
      
<tr>
    <td>  <input type="submit" value="submit"/></td>
</tr>             
                 </div>
    
</table> 
</form>
  
  
    </center>
    </body>
</html>

