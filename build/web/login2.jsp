<%-- 
    Document   : login2
    Created on : Jan 11, 2020, 7:49:58 PM
    Author     : Asus
--%> 


<html>
    <head>

        <title>Login Form</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="style.css" rel="stylesheet" type="text/css" />
        <style>
            * {
	margin: 0;
	padding: 0;
}

a:link {
	color: #ffffff;
}

a:hover {
	text-decoration: none;
	color: #FF0000;
}

a:visited {
	color: #ffffff;
}
body {
	margin: 0px;
	padding: 0px;
	background: #FFFFFF url(images/back_pic.gif) repeat-x;
	font: 13px verdana, Helvetica, sans-serif;
	color: #ffffff;
}

#main
{
background: url(images/big_pic.jpg) no-repeat 0px 153px;
width: 100%;
}

#header {
	width: 778px;
	height: 405px;
	padding-left: 30px;
}

#logo {
	width: 289px;
	height: 110px;
}

#logo h1 {
	padding-top: 38px;
	font-size: 28px;
	font-weight: normal;
}

#logo h1 a {
	color: #ffffff;
}

#logo h2 {
	margin-top: 5px;
	font-size: 14px;
	font-weight: normal;
}

#logo h2 a {
	color: #ffffff;
}

#logo a {
	text-decoration: none;
	text-transform: lowercase;
	font-style: italic;
}
#m1
{
   margin: -15px 0 0 0;
   padding-left: 270px;	
}
#metamorph { 
    font-size: 14px;
	color: #ffffff;
}
#menu {
height: 153px;
}

#menu ul {
	margin: 0;
	padding-top: 88px;
	list-style: none;
}

#menu li {
	display: inline;
}

#menu a {
	display: block;
	float: left;
	width: 130px;
	height: 30px;
	margin-left: 1px;
	padding-top: 15px;
	background: url(images/button.png) no-repeat;
	text-align: center;
	text-decoration: none;
	color: #ffffff;
	font-weight: bold;
}

#menu a:hover {
	height: 34px;
	margin-top: -3px;
	font-size: 16px;
	text-decoration: underline;
}

#global
{
background: #81AFBF url(images/back_all.gif) repeat-x top
}

#content
{
width: 778px;
padding: 10px;
padding-top: 20px;
}

#right
{
	float: right;
	width: 216px;
	padding-right: 10px;
}



#left
{
width: 500px;
}

#left H4
{
	font-size: 12px;
	color: #0041A3;

}

#left H1
{
	font-size: 18px;
	color: #ffffff;
	padding-bottom: 10px
}

#left a
{
color: #ffffff;
text-decoration: none;
}

#left p {
	margin: 0;
	padding: 0;
	padding-bottom: 10px;
}

#left h2 {
	margin: 0;
	padding: 0;
	padding-top: 10px;
	color: #ffffff;
}
.date {
	text-align: right;
	color: #ffffff;
	font-size: 11px;
}

.date a {
	color: #0041A3;
}

#left .pic
{
float: left;
margin: 5px;
}

#left .pic1
{
float: right;
margin: 5px;
}

#footer {
	height: 71px;
	padding-top: 70px;
	background: #ACCFEC url(images/footer.gif) repeat-x;
	text-align: center;
}

#footer p {
	margin: 0;
	font-size: 10px;
	color: #ffffff;
}

#footer a {
	color: #ffffff;
	font-size: 10px;
}

#footer a:hover {
	color: #FF0000;
}
.small p {
	margin: 0;
	font-size: 11px;
}
.boxed {
	margin-bottom: 20px;
}

.boxed .title {
	height: 28px;
	padding: 10px 0 0 30px;
	background: #ACCFEC url(images/title.gif) repeat-x;
	font-size: 14px;
	text-transform: uppercase;
	color: #548198;
}

.boxed .content2 {
	padding: 10px;
}

#login {
}

#login form {
}

#login fieldset {
	border: none;
}

#login legend {
	display: none;
}

#login label {
	font-size: x-small;
	font-weight: bold;
}

#login input {
	margin-bottom: 5px;
}

#text1, #text2 {
	width: 150px;
	padding: 2px;
	font-family: Arial, Helvetica, sans-serif;
	color: #666666;
}


#updates ul {
	margin: 0;
	list-style: none;
}

#updates h3 {
	margin: 0;
	font: bold x-small Verdana, Arial, Helvetica, sans-serif;
}

#updates p {
	margin-bottom: 1.4em;
	font-size: smaller;
	line-height: normal;
}
</style>
    <body div class="bg" >
    <center>
        <div class="container">
           
     <div class="box">
         <img src="image/avatar.png" div class="avatar"> 
  <h2>Login</h2>
  <form action="login2" method="post">
    <div class="inputBox">
      <input type="text" name="username">
      <label>Username</label>
    </div>
    <div class="inputBox">
        <input type="password" name="password">
        <label>Password</label>   
    </div>
    <input type="submit" name="sign-in" value="Sign In">
  </form>
</div>
             
        </div>
                    </center>
                </table>
            
    </center>
</body>