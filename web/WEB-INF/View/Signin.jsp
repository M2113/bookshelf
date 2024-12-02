<%-- 
    Document   : Signin
    Created on : Mar 16, 2024, 2:39:25 PM
    Author     : junaid
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign In</title>
        <link rel="stylesheet" href="css/login_style.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-                                  QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        
        <style>
            /* Hide spinner controls for number input */
            input[type="number"]::-webkit-inner-spin-button,
            input[type="number"]::-webkit-outer-spin-button {
              -webkit-appearance: none;
              margin: 0;
            }

            input[type="number"] {
              -moz-appearance: textfield;
              appearance: textfield;
            }
            
            .nav-link{
                font-size: 20px;
                margin-right: 20px;
            }
        </style>
    </head>
    <body style="background-color: antiquewhite; overflow-x: hidden;" onload="passwordToggle()">
        <!-- navbar starts -->
        <div>
            <nav class="navbar navbar-expand-lg">
		<div class="container-fluid">
			<div class="col-1 d-flex justify-content-end"">
				<img id="logo" src="logo/book6.png" class="rounded d-block ing-fluid" />
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
        <br/><br/>
	<!-- navbar ends -->
        
        <div class="container d-flex justify-content-center">
                <div class="card form my-5 col-4">
                    <div class="card-header text-center py-3"><h2>Login</h2></div>
                    <div class="card-body px-4">
                        
                        <form id="signin" action="fc?type=model&page=LoginModel" method="post">
                            <div class="mb-3">
                                <label for="enroll" class="form-label">Enrollment</label>
                                <input type="number" name="enroll" id="enroll" class="form-control" required>
                                <span class="span" style="color: red; font-size: 12px;"></span>
                            </div>
                            
                            <label for="password" class="form-label">Password</label>
                            <div class="mb-3 input-group">
                                <input type="password" name ="pass" class="form-control" id="password" required>
                                <span class="input-group-text"><img id="toggle" src="images/hide.png" alt="hide" style="height: 20px; width: 20px;  cursor:pointer";/></span>
                                <span class="span" style="color: red; font-size: 12px;"></span>
                            </div>
                        </form>
                    </div>
                    <div class="card-footer">
                        <div class="row mt-6">
                            <div class="d-flex justify-content-center">
                                <p>New user?</p>
                                <a class="link-offset-2 link-offset-3-hover link-underline link-underline-opacity-0 link-underline-opacity-75-hover px-3" href="fc?type=view&page=Registration">sign up</a>
                            </div>
                        </div>
                        <div class="d-flex justify-content-center">
                            <div><button type="submit" form="signin" class="btn btn-success mb-3 mx-1">Login</button></div>
                            <div><button type="reset" form="signin" class="btn btn-outline-danger mb-3 mx-1">Reset</button></div>
                        </div>
                    </div>
                </div>
               
            </div>
        </div>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-  
        YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
        
        <script src="js/async.js"></script>
    </body>
</html>
