<%-- 
    Document   : Registration
    Created on : Mar 16, 2024, 2:38:10 PM
    Author     : junaid
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
        <link rel="stylesheet" href="css/registration_style.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-                                    QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        
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
    <body style="background-color: antiquewhite; overflow-x: hidden;" onload="reg(), passwordToggle()">
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
                <div class="card form my-5 col-5">
                    <div class="card-header text-center py-3"><h2>Register here</h2></div>
                    <div class="card-body px-4">
                        
                        <form id="signup" action="fc?type=model&page=RegistrationModel" method="Post" >
                            <div class="mb-3">
                                <!--<label for="name" class="form-label">Name</label>-->
                                <input type="text" class="form-control" id="name" placeholder="Name" name="name" required>
                            </div>
                            <div class="mb-3">
                                <!--<label for="email" class="form-label">Email</label>-->
                                <input type="email" class="form-control" id="email" placeholder="Email" name="email" required>
                            </div>
                            <div class="mb-3">
                                <!--<label for="enroll" class="form-label">Enrollment</label>-->
                                <input type="number" class="form-control" id="enroll" placeholder="Enrollment no." name="enrollment" required>
                            </div>
                            <div class="mb-3 input-group">
                                <!--<label for="enroll" class="form-label">Password</label>-->
                                <input type="password" class="form-control" id="password" placeholder="Password" name="password" required>
                                <span class="input-group-text"><img id="toggle" src="images/hide.png" alt="hide" style="height: 20px; width: 20px; cursor:pointer";/></span>
                                
                            </div>
                            <div class="mb-3">
                                <!--<label for="branch" class="form-label">Branch</label>-->
                                <select class="form-select" name="branch" required>
                                    <option selected hidden>Branch</option>
                                    <option value="CSE">CSE</option>
                                </select>
                            </div>
                            <div class="mb-3">
                                <!--<label for="year" class="form-label">Year</label>-->
                                <select class="form-select" id="year" name="year" required>
                                    <option selected hidden>select year</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                </select>
                            </div>
                            <div class="mb-3">
                                <!--<label for="semester" class="form-label">Semester</label>-->
                                <select class="form-select" id="sem" name="semester" required>
                                    <option selected hidden>select semester</option>
                                </select>
                            </div>
                            
                            
                        </form>
                    </div>
                    <div class="card-footer">
                        <div class="row mt-6">
                            <div class="d-flex justify-content-center">
                                <p>Already have an account?</p>
                                <a class="link-offset-2 link-offset-3-hover link-underline link-underline-opacity-0 link-underline-opacity-75-hover px-3" href="fc?type=view&page=Signin">sign in</a>
                            </div>

                        </div>
                        <div class="d-flex justify-content-center">
                            <div><button type="submit" form="signup" class="btn btn-success mb-3 mx-1">Register</button></div>
                            <div><button type="reset" form="signup" class="btn btn-outline-danger mb-3 mx-1">Reset</button></div>
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
