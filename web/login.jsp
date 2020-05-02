<%-- 
    Document   : login
    Created on : Jan 8, 2020, 11:48:43 PM
    Author     : Asus
--%>
<html>
    <head>

        <title>Login Form</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="style.css" rel="stylesheet" type="text/css" />
        <style>
            body {font-family: Arial, Helvetica, sans-serif;}
            * {box-sizing: border-box;}

           
             input[type=text], select, textarea {
                width: 70%;
                background-color: white;
                padding: 10px;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;
                margin-top: 6px;
                margin-bottom: 16px;
                resize: vertical;
            }
             input[type=password]{
                width: 70%;
                padding: 10px;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;
                margin-top: 6px;
                margin-bottom: 16px;
                resize: vertical;
            }

            .avatar {
                vertical-align: middle;
                width: 200px;
                height: 200px;
                border-radius:150%;
            }
            .container {
                border-radius: 10px;
                background-color:gray;
                padding: 30px;
                margin-left: 30%;
                margin-right:30%;
                opacity: 0.6;

                filter: alpha(opacity=60);
                container-align:center;
                margin-top:10%;
                
            }
            input[type=submit] {
                background-color: black;
                color: white;
                padding: 16px 20px;
                border: none;
                border-radius: 4px;
                cursor: pointer;
            }

            input[type=submit]:hover {
                background-color: #45a049;
            }
            .button {
  background-color:black;
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
    <body  bgcolor="white">
    <center>
        <div class="container">
            <img src="image/avtar.png.jpg" class="avatar" >
            <form action="Login" method="post">
                <table width="400">
                    
                    <td><B>Username:</B></td>
                    <td><input type="text" name="username"  /></td>
                    </tr>
                    
                    <tr>
                        <td><B>Password:</B></td>
                        <td> 
                            <input type="password"  name="password"/></td>
                    </tr><br>

                    <td>
                        <td><input type="submit"  value="Login"/>

                            <button class="button" formaction="Home.jsp" >Back</button></td>
                    </tr>
                    </div>
                    </center>
                </table>
            </form>
    </center>
</body>