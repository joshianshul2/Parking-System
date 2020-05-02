<%-- 
    Document   : Tokenid
    Created on : Jan 16, 2020, 11:34:03 AM
    Author     : Asus
--%>

<!DOCTYPE html>
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
                width: 50%;
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
                background-color:gray;
                padding: 60px;
                margin-left: 30%;
                margin-right:30%;
                

            }
        </style>

    </head>

    <br><br><br><br><br> <br><br><br><br> 
    <center> 
        <div class="container">
            <form action="bill.jsp" method="post">

                <label for="TokenID"><b>Token ID:</b></label>

                <input type="text" placeholder="Enter TokenID" name="TokenID"/>

                <br>

                <input type="submit" value="submit"/>

        </div>


    </form>


</center>
</body>
</html>

