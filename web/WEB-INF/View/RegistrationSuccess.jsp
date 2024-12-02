<%-- 
    Document   : RegistrationSuccess
    Created on : Mar 27, 2024, 12:07:08 AM
    Author     : junaid
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Regisgtration success</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <style>
            *{
                margin: 0;
                padding: 0;
            }
            
            body{
                background-color: #a5d6a7;
            }
            
            #img{
                height: 100px;
                width: 100px;
            }
        </style>
    </head>
    <body>
        <br><br><br>
        <div class="container d-flex justify-content-center">
            <div class="card mt-5 col-4">
                <div class="card-body text-center">
                    <img src="images/success.png" id="img" class="card-img-top" alt="success">
                    <div class="row pt-4">
                        <div class="col-1"></div>
                        <div class="col-10">
                            <h3>Registration Successful</h3>
                            <p>Email has been sent to your registered email<br>Please verify from there.</p>
                            <a href="index.html"><button type="button" class=" btn btn-success">Continue</button></a>
                        </div>
                        <div class="col-1"></div>
                    </div>
                </div>

            </div>
        </div>
    </body>
</html>
