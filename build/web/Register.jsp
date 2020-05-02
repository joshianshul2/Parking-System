<%-- 
    Document   : Register
    Created on : Jan 11, 2020, 3:04:37 PM
    Author     : Asus
--%>

<!DOCTYPE html>

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

           .container {
  border-radius: 10px;
  background-color:cornsilk;
  padding: 60px;
  margin-left: 30%;
  margin-right:30%;
  
}
.Register {
                vertical-align: middle;
                width: 200px;
                height: 200px;
                border-radius:170%
            }
        </style>
    </head>

    <body bgcolor="white">
    <center>

        <div class="container">
            <img src="image/Register.png.jpg" class="Register" >
            <form action="Register" method="post">
                <table width="600">    
               
                    <tr>
                        <td><label for="customername"><b>Customer Name:</b></label></td>
                        <td><input type="text" placeholder="Enter Name" name="customername" required/></td>
                    </tr>

                    <tr>
                        <td><label for="vehicleno"><b>Vehicle Number:</b></label></td>
                        <td><input type="text" name="vehicleno" required/></td>
                    </tr>
                    <tr>
                        <td><label for="address"><b>Address:</b></label></td>
                        <td><input type="text" name="address" required></td>
                    </tr>
                    <tr>
                        <td><label for="contactno"><b>Contact Number:</b></label></td>
                        <td><input type="text" name="contactno" required></td>
                    </tr>
                    <tr>
                        <td><label for="vehicletype"><b>Vehicle type:</b></label></td>
                        <td><input type="text" name="vehicletype" required></td>                        
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: center;"><input type="submit" value="submit"/></td>
                    </tr>
                </table>    
            </form>
        </div>
    </center>
</body>
</html>