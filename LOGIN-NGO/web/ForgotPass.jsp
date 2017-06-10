<%@ page import="net.tanesha.recaptcha.ReCaptcha"%>
<%@ page import="net.tanesha.recaptcha.ReCaptchaFactory"%>
 
<html>
<head>
    <title>Forgot Password ?</title>
</head>
<body> 
            <form action="ForgotPassResult.jsp" method="post">
                <%
                //ReCaptcha c = ReCaptchaFactory.newReCaptcha("your_public_key", "your_private_key", false);
                ReCaptcha captcha = ReCaptchaFactory.newReCaptcha("6LfO7AoUAAAAAKr27jB_NAWS20yabMq5kQxDjeV2", "6LfO7AoUAAAAAJY0gMgYODu3_zFa86G5PCG-Y4hq", false);
                out.print(captcha.createRecaptchaHtml(null, null));
                %>
                        <input type="submit" value="Submit" />
        </div>
</body>
</html>