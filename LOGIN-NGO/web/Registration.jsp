<%-- 
    Document   : Registration
    Created on : 21 Oct, 2016, 1:11:55 AM
    Author     : Rohit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="CSS/style.css">
        <link rel="stylesheet" type="text/css" href="CSS/demo.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
        <!--Script for Ajax request to check if user id is available or not-->
        <script>
            $(document).ready(function(){
               $('#userid').blur(function(){
                    var userid = $('#userid').val();
                    $.ajax({
                        type: 'POST',
                        data: {userid: userid},
                        url: 'AjaxServlet',
                        success: function(result){
                            $('#result').html(result);
                        }
                    });
               });
            });
        </script>    
    </head>
    <body style="background-color:#d5d5d5;">
            
            <div class="container">
			<header>
				<h1><span>MISSION HEAL</span>REGISTER WITHIN US!!!</h1>
            </header>       
      <div  class="form">
          <form id="contactform" method="POST" action="RegistrationServlet.do"> 
    			<p class="contact"><label for="name">First Name</label></p> 
    			<input id="name" name="fname" placeholder="First Name" required="" tabindex="1" type="text"> 
                        
                        <p class="contact"><label for="name">Last Name</label></p> 
    			<input id="name" name="lname" placeholder="Last Name" required="" tabindex="1" type="text"> 
    			 
    			<p class="contact"><label for="email">Email</label></p> 
                        <input id="email" name="email" placeholder="example@domain.com" required="" tabindex="1" type="email"> 
                        
                <!--------------------------Check if USER-ID is available or not using AJAX----------------------------------->
                <p class="contact"><label for="userid">User_Id</label></p> 
    			<input id="userid" name="uid" placeholder="example: 7392" required="" tabindex="1" type="text">         
                        <br><strong><span id="result" style="color: red;"></span></strong><br>
                <!------------------------------------------------------------------------------------------------------------>        
                <p class="contact"><label for="username">Create a username</label></p> 
    			<input id="username" name="usrname" placeholder="username" required="" tabindex="1" type="text"> 
    			 
                <p class="contact"><label for="password">Create a password</label></p> 
    			<input type="password" id="password" name="passwd" placeholder="password" required="" tabindex="1"> 
        
            <input class="buttom" name="submit" id="submit" tabindex="5" value="Sign me up!" type="submit">&emsp;&emsp;&emsp;&emsp;
            <input class="buttom" name="reset" id="reset" tabindex="5" value="Reset" type="reset">
   </form> 
</div>      
</div>

            
        </div>    
    </body>
</html>



<!--
<form action="RegistrationServlet.do" method="post">
                    First Name : <input type="text" value="fname" /><br><br>
                    Last Name  : <input type="text" value="lname" /><br><br>
                    Enter UserName : <input type="text" value="usrname" /><br><br>
                    Enter User_Id : <input type="text" value="uid" /><br><br>
                    Enter Password : <input type="password" value="passwd" /><br><br>
                    Retype Password : <input type="password" value="passwd2" /><br><br>
                    Enter Email-Id : <input type="text" value="email" /><br><br>
                    <input type="submit" value="Register" />&nbsp;&nbsp;&nbsp;<input type="reset" value="Reset" />
                </form>    
-->