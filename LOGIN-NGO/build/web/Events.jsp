<!DOCTYPE html>
<html lang="en">
<head>
  <title>NGO</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="CSS/pagination.css" >
  <script src="JS/jquery.js"></script>
  <script src="JS/paginate.js"></script>
  <script src="JS/custom.js"></script>

  <style>
      #rightFloater{
          float: right;
          margin-right: 50px;
      }
  body {
      font: 400 15px/1.8 Lato, sans-serif;
      color: #777;
      background-color: #2d2d30;
      margin:0px;
  }
  h3, h4 {
      margin: 10px 0 30px 0;
      letter-spacing: 10px;
      font-size: 20px;
      color: #111;
  }
  .container {
      padding: 80px 120px;
  }
  .person {
      border: 10px solid transparent;
      margin-bottom: 25px;
      width: 80%;
      height: 80%;
      opacity: 0.7;
  }
  .person:hover {
      border-color: #f1f1f1;
  }
  .carousel-inner img {
      /*-webkit-filter: grayscale(90%);
      filter: grayscale(90%);*/ /* make all photos black and white */
      width: 100%; /* Set width to 100% */
      margin: auto;
  }
  .carousel-caption h3 {
      color: #fff !important;
  }
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; /* Hide the carousel text when the screen is less than 600 pixels wide */
    }
  }
  .bg-1 {
      background: #2d2d30;
      color: #bdbdbd;
  }
  .bg-1 h3 {color: #fff;}
  .bg-1 p {font-style: italic;}
  .list-group-item:first-child {
      border-top-right-radius: 0;
      border-top-left-radius: 0;
  }
  .list-group-item:last-child {
      border-bottom-right-radius: 0;
      border-bottom-left-radius: 0;
  }
  .thumbnail {
      padding: 0 0 15px 0;
      border: none;
      border-radius: 0;
  }
  .thumbnail p {
      margin-top: 15px;
      color: #555;
  }
  .btn {
      padding: 10px 20px;
      background-color: #333;
      color: #f1f1f1;
      border-radius: 0;
      transition: .2s;
  }
  .btn:hover, .btn:focus {
      border: 1px solid #333;
      background-color: #fff;
      color: #000;
  }
  .modal-header, h4, .close {
      background-color: #333;
      color: #fff !important;
      text-align: center;
      font-size: 30px;
  }
  .modal-header, .modal-body {
      padding: 40px 50px;
  }
  .nav-tabs li a {
      color: #777;
  }
  #googleMap {
      width: 100%;
      height: 400px;
      -webkit-filter: grayscale(100%);
      filter: grayscale(100%);
  }
  .navbar {
      font-family: Montserrat, sans-serif;
      margin-bottom: 0;
      background-color: #2d2d30;
      border: 0;
      font-size: 11px !important;
      letter-spacing: 4px;
      opacity: 0.9;
  }
  .navbar li a, .navbar .navbar-brand {
      color: #d5d5d5 !important;
  }
  .navbar-nav li a:hover {
      color: #fff !important;
  }
  .navbar-nav li.active a {
      color: #fff !important;
      background-color: #29292c !important;
  }
  .navbar-default .navbar-toggle {
      border-color: transparent;
  }
  .open .dropdown-toggle {
      color: #fff;
      background-color: #555 !important;
  }
  .dropdown-menu li a {
      color: #000 !important;
  }
  .dropdown-menu li a:hover {
      background-color: #696969 !important;
  }
  footer {
      background-color: #2d2d30;
      color: #f5f5f5;
      padding: 32px;
  }
  footer a {
      color: #f5f5f5;
  }
  footer a:hover {
      color: #777;
      text-decoration: none;
  }
  .form-control {
      border-radius: 0;
  }
  textarea {
      resize: none;
  }
  </style>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#myPage">MISSION HEAL</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="index.jsp">HOME</a></li>
        <li><a href="index.jsp">ABOUT US</a></li>
        <li><a href="index.jsp">EVENTS</a></li>
        <li><a href="index.jsp">CONTACT</a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">MORE
          <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="Suggestions.jsp">Suggestions</a></li>
            <li><a href="Donations.jsp">Donations</a></li>
            <li><a href="Gallery.html">Gallery</a></li>
          </ul>
        </li>
        <!-- <li><a href="#"><span class="glyphicon glyphicon-search"></span></a></li> -->
      </ul>
    </div>
  </div>
</nav>



<!-- Container (TOUR Section) -->
  <div class="page">
    <div id="tour" class="bg-1">
      <div class="list-of-posts">
          <div class="container">
                <h3 class="text-center">EVENTS</h3>
                <div class="row text-center">
                      <!---------------------------CONTENTS-------------------->
                        <div class="post">
                          <div class="col-sm-4">
                            <div class="thumbnail">
                              <img style="height: 200px;" src="Images/imagesfor15events/blood.jpg" alt="Paris" width="400" height="300">
                              <p><strong>Blood Donation</strong></p>
                              <p>05<sup>th</sup> November 2016</p>
<!--                              <button class="btn" data-toggle="modal" data-target="#myModal">View</button>-->
                            </div>
                          </div>
                          </div>
                      <!---------------------------CONTENTS-------------------->
                         <div class="post">
                          <div class="col-sm-4">
                            <div class="thumbnail">
                              <img style="height: 200px;" src="Images/ngo/17.jpg" alt="New York" width="400" height="300">
                              <p><strong>Tree Plantation</strong></p>
                              <p>14<sup>th</sup> November 2016</p>
<!--                              <button class="btn" data-toggle="modal" data-target="#myModal">View</button>-->
                            </div>
                          </div>
                          </div>
                      <!---------------------------CONTENTS-------------------->
                        <div class="post">
                          <div class="col-sm-4">
                            <div class="thumbnail">
                              <img style="height: 200px;" src="Images/imagesfor15events/public.jpg" alt="San Francisco" width="400" height="300">
                              <p><strong>Public Awareness</strong></p>
                              <p>25<sup>st</sup> November 2016</p>
<!--                              <button class="btn" data-toggle="modal" data-target="#myModal">View</button>-->
                            </div>
                          </div>
                          </div>
                      <!---------------------------CONTENTS-------------------->
                        <div class="post">
                          <div class="col-sm-4">
                            <div class="thumbnail">
                              <img style="height: 200px;" src="Images/imagesfor15events/career.jpg" alt="San Francisco" width="400" height="300">
                              <p><strong>Career Counseling</strong></p>
                              <p>26<sup>th</sup> November 2016</p>
<!--                              <button class="btn" data-toggle="modal" data-target="#myModal">View</button>-->
                            </div>
                          </div>
                          </div>
                      <!---------------------------CONTENTS-------------------->
                         <div class="post">
                          <div class="col-sm-4">
                            <div class="thumbnail">
                              <img style="height: 200px;" src="Images/imagesfor15events/marathon.jpg" alt="San Francisco" width="400" height="300">
                              <p><strong>Marathon</strong></p>
                              <p>30<sup>th</sup> November 2016</p>
<!--                              <button class="btn" data-toggle="modal" data-target="#myModal">View</button>-->
                            </div>
                          </div>        
                        </div>
                      <!---------------------------CONTENTS-------------------->
                        <div class="post">
                          <div class="col-sm-4">
                            <div class="thumbnail">
                              <img style="height: 200px;" src="Images/imagesfor15events/talk.jpg" alt="San Francisco" width="400" height="300">
                              <p><strong>TedX Talks</strong></p>
                              <p>21<sup>st</sup> November 2016</p>
<!--                              <button class="btn" data-toggle="modal" data-target="#myModal">View</button>-->
                            </div>
                          </div>
                          </div>
                      <!---------------------------CONTENTS-------------------->
                        <div class="post">
                          <div class="col-sm-4">
                            <div class="thumbnail">
                              <img style="height: 200px;" src="Images/imagesfor15events/oldage.jpg" alt="San Francisco" width="400" height="300">
                              <p><strong>Visit to Oldage Home</strong></p>
                              <p>11<sup>th</sup> November 2016</p>
<!--                              <button class="btn" data-toggle="modal" data-target="#myModal">View</button>-->
                            </div>
                          </div>
                          </div>
                      <!---------------------------CONTENTS-------------------->
                        <div class="post">
                          <div class="col-sm-4">
                            <div class="thumbnail">
                              <img style="height: 200px;" src="Images/imagesfor15events/medical_camp.jpg" alt="San Francisco" width="400" height="300">
                              <p><strong>Medical Camp</strong></p>
                              <p>1<sup>st</sup> November 2016</p>
<!--                              <button class="btn" data-toggle="modal" data-target="#myModal">View</button>-->
                            </div>
                          </div>
                          </div>
                      <!---------------------------CONTENTS-------------------->
                        <div class="post">
                          <div class="col-sm-4">
                            <div class="thumbnail">
                              <img style="height: 200px;" src="Images/imagesfor15events/food.jpg" alt="San Francisco" width="400" height="300">
                              <p><strong>Food Distribution</strong></p>
                              <p>01<sup>st</sup> December 2016</p>
<!--                              <button class="btn" data-toggle="modal" data-target="#myModal">View</button>-->
                            </div>
                          </div>
                          </div>
                      <!---------------------------CONTENTS-------------------->
                        <div class="post">
                          <div class="col-sm-4">
                            <div class="thumbnail">
                              <img style="height: 200px;" src="Images/imagesfor15events/vaccination.jpg" alt="San Francisco" width="400" height="300">
                              <p><strong>Vaccination</strong></p>
                              <p>3<sup>rd</sup> November 2016</p>
<!--                              <button class="btn" data-toggle="modal" data-target="#myModal">View</button>-->
                            </div>
                          </div>
                          </div>
                      <!---------------------------CONTENTS-------------------->
                        <div class="post">
                          <div class="col-sm-4">
                            <div class="thumbnail">
                              <img style="height: 200px;" src="Images/imagesfor15events/cleanliness.jpg" alt="San Francisco" width="400" height="300">
                              <p><strong>Swaach Bharat Abhiyan</strong></p>
                              <p>20<sup>th</sup> November 2016</p>
<!--                              <button class="btn" data-toggle="modal" data-target="#myModal">View</button>-->
                            </div>
                          </div>
                          </div>
                      <!---------------------------CONTENTS-------------------->
                        <div class="post">
                          <div class="col-sm-4">
                            <div class="thumbnail">
                              <img style="height: 200px;" src="Images/imagesfor15events/childrendayorphanages.jpg" alt="San Francisco" width="400" height="300">
                              <p><strong>Children's Day at Orphanage</strong></p>
                              <p>14<sup>th</sup> November 2016</p>
<!--                              <button class="btn" data-toggle="modal" data-target="#myModal">View</button>-->
                            </div>
                          </div>
                          </div>
                          
                </div>
          </div>
        </div>
        <div id="rightFloater">
         <div class="pagination">
             
          </div> 
        </div>
          <!-- Modal -->
          <div class="modal fade" id="myModal" role="dialog">
                <div class="modal-dialog">
                
                  <!-- Modal content-->                                            
                  <div class="modal-content">
                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal">�</button>
                          <h4><span class="glyphicon glyphicon-lock"></span> Details</h4>
                        </div>
                        <div class="modal-body">
                          <form role="form">
                            <div class="form-group">
                              <label for="psw"><span class="glyphicon glyphicon-shopping-cart"></span> Tickets, $23 per person</label>
                              <input type="number" class="form-control" id="psw" placeholder="How many?">
                            </div>
                            <div class="form-group">
                              <label for="usrname"><span class="glyphicon glyphicon-user"></span> Send To</label>
                              <input type="text" class="form-control" id="usrname" placeholder="Enter email">
                            </div>
                              <button type="submit" class="btn btn-block">Pay
                                <span class="glyphicon glyphicon-ok"></span>
                              </button>
                          </form>
                        </div>
                        <div class="modal-footer">
                          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal">
                            <span class="glyphicon glyphicon-remove"></span> Cancel
                          </button>
                          <p>Need <a href="#">help?</a></p>
                        </div>
                  </div>
                </div>
          </div>
    </div>
  </div>

<!-- Container (Contact Section) -->

<!-- Footer -->
<footer class="text-center">
<!--  <a class="up-arrow" href="#myPage" data-toggle="tooltip" title="TO TOP">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a><br><br>-->

</footer>

<script>
$(document).ready(function(){
  // Initialize Tooltip
  $('[data-toggle="tooltip"]').tooltip();
  
  // Add smooth scrolling to all links in navbar + footer link
  $(".navbar a, footer a[href='#myPage']").on('click', function(event) {

    // Make sure this.hash has a value before overriding default behavior
    if (this.hash !== "") {

      // Prevent default anchor click behavior
      event.preventDefault();

      // Store hash
      var hash = this.hash;

      // Using jQuery's animate() method to add smooth page scroll
      // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
      $('html, body').animate({
        scrollTop: $(hash).offset().top
      }, 900, function(){
   
        // Add hash (#) to URL when done scrolling (default click behavior)
        window.location.hash = hash;
      });
    } // End if
  });
})
</script>

</body>
</html>

