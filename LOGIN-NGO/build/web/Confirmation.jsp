<%-- 
    Document   : Login
    Created on : 21 Oct, 2016, 1:11:40 AM
    Author     : Rohit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <style>
            .modal-footer {border-top:0px;}
        </style>    
    </head>
    <body style="background-color: #d5d5d5">
        
      <div id="loginModal" class="modal show" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                            <h1 class="text-center">OTP Confirmation</h1>
                    </div>
                    <div class="modal-body">
                        <form class="form col-md-12 center-block" action="OTPServlet.do" method="post">
                          <div class="form-group">
                            <input type="text" class="form-control input-lg" name="usrname" placeholder="Username">
                          </div>
                          <div class="form-group">
                            <input type="password" class="form-control input-lg" name="passwd" placeholder="Password">
                          </div>
                           <div class="form-group">
                            <input type="text" class="form-control input-lg" name="otp" placeholder="OTP">
                          </div> 
                          <div class="form-group">
                            <button class="btn btn-primary btn-lg btn-block">Sign In</button>
<!--                            <span class="pull-right"><a href="Registration.jsp">Register</a></span>-->
                            <span><a href="ForgotPass.jsp">Forgot password?</a></span>
                          </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <div class="col-md-12">
                            <button class="btn" data-dismiss="modal" aria-hidden="true">Cancel</button>
                        </div>	
                    </div>
                </div>
            </div>
        </div>
<!--                <form action="LoginServlet.do" method="post">
                    Username : <input type="text" name="usrname" /><br><br>
                    Password : <input type="password" name="passwd" /><br><br>
                    <input type="submit" value="Login" />&nbsp;&nbsp;&nbsp;<input type="reset" value="Reset" />
                </form>-->
    </body>
</html>
