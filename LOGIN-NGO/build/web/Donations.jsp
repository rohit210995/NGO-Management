<!DOCTYPE html>
<html >
  <head>
    <meta charset="UTF-8">
    <title>Donations for Mission Heal</title>
    
        <link rel="stylesheet" href="CSS/stylee.css">

  </head>

  <body>
      <%
                if(session.getAttribute("Username")==null){
                     response.sendRedirect("Err.jsp");
                }
    %> 
      <img src="Images/donate.jpg" style='position:fixed;top:0px;left:0px;width:100%;height:100%;z-index:-1;'>
 <html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Donations</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">

  </head>
  <body>
      <div style="color:#0c1523">
  <font size="+1">
  <p><strong><em>"What we do for ourselves dies with us.<br>
What we do for others and the world remains and is immortal."-Albert Pike</em></strong>
  <br>
Our Organization can only achieve its goals with the assistance of generous donations from members of our community. Without these donations, serving those in our area would not be possible.
</p>
<div><p>Donations can be proceeded in two ways<br>1.In Person<br>2.Online Donation</p>
</div> <br>
<font size="+2"><strong>In order to donate in person</strong></font>
<br><p>Enter your email id and Click here. You will receive an email where-in the address will be mentioned.</p>
<form action="DonationEmailServlet.do" method="post">
<input type="text" name="email" placeholder="E-Mail"><br><br>
<!--<button class="btn" data-dismiss="modal" aria-hidden="true">Click here!</button>-->
<input type="submit" value="Submit">
</form>
<br><br><font size="+2"><strong>In order to make online payment</strong></font></font>
<div class="container">
            <div class="panel panel-default credit-card-box customwidth center-block">
                <div class="panel-heading display-table" >
                    <div class="row display-tr" >
                        <h3 class="panel-title display-td" >Payment Details</h3>
                        <div class="display-td" >                            
                            <img class="img-responsive pull-right" src="http://i.imgur.com/gIMFDbp.png">
                        </div>
                    </div>                    
                </div>
                <div class="panel-body">
                    <form role="form" id="payment-form" action="DonationServlet.do" method="post">
<!--                        <div class="row">
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label for="cardNumber">CARD NUMBER</label>
                                    <div class="input-group">
                                        <input 
                                            type="tel"
                                            class="form-control"
                                            name="cardNumber"
                                            placeholder="Valid Card Number"
                                            autocomplete="cc-number"
                                            pattern="^(?:4[0-9]{12}(?:[0-9]{3})?|5[1-5][0-9]{14}|3[47][0-9]{13}|3(?:0[0-5]|[68][0-9])[0-9]{11}|6(?:011|5[0-9]{2})[0-9]{12}|(?:2131|1800|35\d{3})\d{11})$"
                                            required autofocus 
                                        />
                                        <span class="input-group-addon"><i class="fa fa-credit-card" id="cardlogo" style="color:purple;font-size:2rem;"></i></span>
                                    </div>
                                </div>                            
                            </div>
                        </div>-->
                        <div class="row">
                            <div class="col-xs-7 col-md-7">
                                <div class="form-group">
                                    <label for="cardExpiry"><span class="hidden-xs">EXPIRATION</span><span class="visible-xs-inline">EXP</span> DATE</label>
                                    <input 
                                        type="tel" 
                                        class="form-control" 
                                        name="cardExpiry"
                                        placeholder="MM / YY"
                                        autocomplete="cc-exp"
                                        required 
                                    />
                                </div>
                            </div>
                            <div class="col-xs-5 col-md-5 pull-right">
                                <div class="form-group">
                                    <label for="cardCVC">CVV CODE</label>
                                    <input 
                                        type="tel" 
                                        class="form-control"
                                        name="cardCVC"
                                        placeholder="CVV"
                                        autocomplete="cc-csc"
                                        required
                                    />
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label for="couponCode">User_Id</label>
                                    <input type="text" class="form-control" name="uid" />
                                </div>
                            </div>                        
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label for="couponCode">Amount</label>
                                    <input type="text" class="form-control" name="amt" />
                                </div>
                            </div>                        
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <button class="btn btn-success btn-lg btn-block" type="submit">Submit</button>
                            </div>
                        </div>
                        <div class="row" style="display:none;">
                            <div class="col-xs-12">
                                <p class="payment-errors"></p>
                            </div>
                        </div>
                    </form>
                </div>
            </div>            
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
  </body>
</html>
        <script src="JS/index.js"></script>
    
  </body>
</html>
