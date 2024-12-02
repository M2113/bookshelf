<%-- 
    Document   : LearnView
    Created on : Mar 22, 2024, 11:56:18 PM
    Author     : junaid
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>About Us</title>
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-                                    QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <style>
            *{
                margin: 0;
                padding: 0;
            }
            
            body{
                background-color: #a5d6a7;
                overflow-x: hidden;
            }
            
            .logo{
                width: 60px;
                height: 48px;
            }
            .navbar{
                background-color: #a5d6a7;
                color: black;
            }
            #home{
                text-decoration: none;
                color: black;
            }
            .nav-link{
                font-size: 20px;
                margin-right: 20px;
            }
            
            #mid-content{
               padding-left: 120px;
               padding-right: 100px;
               height: 400px;
            }
            .links{
                font-size: 21px;
                padding-left: 100px;
                margin-bottom: 1.3rem;
            }
            a{
                color: black;
                text-decoration: none;
            }
            svg{
                height: 40px;
                width: 40px;
            }
            .para{
                font-size: 19px;
            }

        </style>
    </head>
    <body>
        <!-- navbar starts -->
        <div>
            <nav class="navbar navbar-expand-lg">
		<div class="container-fluid">
			<div class="col-1 d-flex justify-content-end">
				<img src="logo/book6.png" class="logo rounded d-block ing-fluid" />
			</div>
			<div class="col-7 mx-3">
                            <a id="home" href="index.html"><h3>IU BookShelf</h3></a>
			</div>
			<div class="col-4 collapse navbar-collapse" style="margin-left: 15%;">
                            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                               <a class="nav-link" href="index.html">Home</a>
                               <a class="nav-link" href="fc?type=view&page=LearnView">About Us</a> 
                            </ul>

                            
			</div>
		</div>
            </nav>
        </div>
        <!--navbar ends-->
        
        <br><br><br><br>
        <div class="container-fluid d-flex mt-3">
            <div id="para" class="row">
                <div id="mid-content">
                    <div><h2>About IU BookShelf</h2></div>
                    <p class="para">We're creating a website where one can find all the books we need for our
computer science and engineering studies, organized by the semester we’re in at college.
It is a platform making it easy for one to find what they need for each stage of their education. Plus,
one can even contribute their own recommendations and materials to help others as suggestions.
In a fast-paced world where technology is always changing, having access to the right resources can
make all the difference. Let's learn together and make studying computer science and engineering a
little bit easier!</p>
                </div>
            </div>
        </div>
        
    <!--footer starts-->
    <div style="align-items:end;">
        <footer class="footer"  style="background-color: antiquewhite;">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-1"></div>
                    <div class="col-md-4 mt-5 me-3">
                        <img class="logo mb-3" src="logo/book7.png"/>
                        <h2 style="display: inline; padding-left: 8px;" >IU BookShelf</h2>
                        <p class="para">Welcome to our project! We're creating a website where one<br> can find all the books we need for our
                            computer science and engineering studies, organized by the semester we’re in at college.<br>
                        It is a platform making it easy for one to find what they need for each stage of their education. Plus,
                        one can even contribute their own recommendations and materials to help others as<br> suggestions.</p>
                    </div>
                    <div id="quick-links" class="col-md-3 mt-5 d-flex">      
                        <ul class="list-unstyled">
                            <li class="links"><h2 style="font-weight: bold;">Quick Links</h2></li>
                            <li class="links"><a href="index.html">Home</a></li>
                            <li class="links"><a href="fc?type=view&page=LearnView">About</a></li>
                            <li class="links"><a href="index.html">Services</a></li>
                            <li class="links"><a class="link-offset-2 link-offset-3-hover link-underline link-underline-opacity-0 link-underline-opacity-75-hover" href="fc?type=view&page=LearnView">FAQs</a></li>
                        </ul>
                    </div>
                    <div class="connect-with-us col-3 mt-5 d-flex">                
                        <ul class="list-unstyled">
                            <li class="links"><h2 style="font-weight: bold;">Connect With Us</h2></li>
                            <li class="links">
                                <a href="mailto:junaidanwar0906@gmail.com">
                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><!--!Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M64 112c-8.8 0-16 7.2-16 16v22.1L220.5 291.7c20.7 17 50.4 17 71.1 0L464 150.1V128c0-8.8-7.2-16-16-16H64zM48 212.2V384c0 8.8 7.2 16 16 16H448c8.8 0 16-7.2 16-16V212.2L322 328.8c-38.4 31.5-93.7 31.5-132 0L48 212.2zM0 128C0 92.7 28.7 64 64 64H448c35.3 0 64 28.7 64 64V384c0 35.3-28.7 64-64 64H64c-35.3 0-64-28.7-64-64V128z"/></svg>
                                </a>
                            </li>
                            <li class="links">
                                <a href="https://www.linkedin.com/in/md-junaid-ali-anwar-961aa5279/">
                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><!--!Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M416 32H31.9C14.3 32 0 46.5 0 64.3v383.4C0 465.5 14.3 480 31.9 480H416c17.6 0 32-14.5 32-32.3V64.3c0-17.8-14.4-32.3-32-32.3zM135.4 416H69V202.2h66.5V416zm-33.2-243c-21.3 0-38.5-17.3-38.5-38.5S80.9 96 102.2 96c21.2 0 38.5 17.3 38.5 38.5 0 21.3-17.2 38.5-38.5 38.5zm282.1 243h-66.4V312c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9V416h-66.4V202.2h63.7v29.2h.9c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9V416z"/></svg>
                                </a>
                            </li>
                            <li class="links">
                                <a href="https://www.instagram.com/junaidanwar_/">
                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><!--!Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M224.1 141c-63.6 0-114.9 51.3-114.9 114.9s51.3 114.9 114.9 114.9S339 319.5 339 255.9 287.7 141 224.1 141zm0 189.6c-41.1 0-74.7-33.5-74.7-74.7s33.5-74.7 74.7-74.7 74.7 33.5 74.7 74.7-33.6 74.7-74.7 74.7zm146.4-194.3c0 14.9-12 26.8-26.8 26.8-14.9 0-26.8-12-26.8-26.8s12-26.8 26.8-26.8 26.8 12 26.8 26.8zm76.1 27.2c-1.7-35.9-9.9-67.7-36.2-93.9-26.2-26.2-58-34.4-93.9-36.2-37-2.1-147.9-2.1-184.9 0-35.8 1.7-67.6 9.9-93.9 36.1s-34.4 58-36.2 93.9c-2.1 37-2.1 147.9 0 184.9 1.7 35.9 9.9 67.7 36.2 93.9s58 34.4 93.9 36.2c37 2.1 147.9 2.1 184.9 0 35.9-1.7 67.7-9.9 93.9-36.2 26.2-26.2 34.4-58 36.2-93.9 2.1-37 2.1-147.8 0-184.8zM398.8 388c-7.8 19.6-22.9 34.7-42.6 42.6-29.5 11.7-99.5 9-132.1 9s-102.7 2.6-132.1-9c-19.6-7.8-34.7-22.9-42.6-42.6-11.7-29.5-9-99.5-9-132.1s-2.6-102.7 9-132.1c7.8-19.6 22.9-34.7 42.6-42.6 29.5-11.7 99.5-9 132.1-9s102.7-2.6 132.1 9c19.6 7.8 34.7 22.9 42.6 42.6 11.7 29.5 9 99.5 9 132.1s2.7 102.7-9 132.1z"/></svg>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-1"></div>
                </div>
                <div class="row">
                    <div class="col-1"></div>
                    <div class="col-10"><hr></div>
                    <div class="col-1"></div>
                </div>

                <div class="row">
                    <div class="col-md-12 d-flex justify-content-center mb-1">
                        <p ctext-muted small">Copyright © 2024 IU BookShelf. All rights reserved.</p>
                    </div>
                </div>
            </div>
        </footer>
    </div>
    <!--footer ends-->

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-  
        YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>
</html>
