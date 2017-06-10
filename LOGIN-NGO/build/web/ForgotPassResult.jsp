<%@ page import="net.tanesha.recaptcha.ReCaptchaImpl"%>
<%@ page import="net.tanesha.recaptcha.ReCaptchaResponse"%>
	 
	<html>
            <head>
                <title>Forgot Password ?</title>  
                <style>
                    .forgot{
                        text-align: center;
                        float : center;
                        margin-top : 2em;
                    }
                    input{
                        padding : 10px;
                        border-radius : 5px;
                        box-shadow:  2px 2px 2px #888888;
                    }
                </style>    
            </head>
	<body>
            <div class="forgot">
	    <%
	        String remoteAddr = request.getRemoteAddr();
	        ReCaptchaImpl reCaptcha = new ReCaptchaImpl();
	        reCaptcha.setPrivateKey("6LfO7AoUAAAAAJY0gMgYODu3_zFa86G5PCG-Y4hq");
	 
	        String challenge = request.getParameter("recaptcha_challenge_field");
	        String uresponse = request.getParameter("recaptcha_response_field");
	        ReCaptchaResponse reCaptchaResponse = reCaptcha.checkAnswer(remoteAddr, challenge, uresponse);
	 
	        if (reCaptchaResponse.isValid()) 
	        {
	            out.print("We will send your PASSWORD to the e-mail ID with which you have registered !!! ");
	        }else
	        {
	            out.print("Incorrect CAPTCHA !!! ");
                    response.sendRedirect("ForgotPass.jsp");
	        }
	    %>
            <br><br><br>
            <form action="ForgotPassServlet.do" method="post">
                Enter your Username : <input type="text" name="usrname" /><br><br>
                <input type="submit" value="Submit">
            </form>    
            </div>
	</body>
	</html>