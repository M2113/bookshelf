<%-- 
    Document   : admin
    Created on : Mar 26, 2024, 11:47:07 PM
    Author     : junaid
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>userpage</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <style>
            *{
                margin: 0;
                padding: 0;
            }
            body{
                background-color: antiquewhite;
                overflow-x: hidden;
            }

            .card{
                margin:20px;
                height: 606px;
                width: 360px;
                background-color: #a5d6a7;
            }
            .card-img-top{
                padding: 10px;
                height:440px;
            }
            .nav-link{
                font-size: 20px;
                margin-right: 20px;
            }
            .navbar{
                color: black;
            }
            #logo{
                width: 60px;
                height: 48px;
            }
            #home{
                text-decoration: none;
                color: black;
            }
            .subject_name{
                margin-left: 67px;
                margin-top: 40px;
            }
            .para{
                font-size: 18px;
                margin-bottom: 0;
            }
            .bookspan{
                background-color: #ffe1b9;
                padding: 10px;
                border-radius: 5px;
                border: 1px solid #ffcd89;
            }
            .btn-success{
                --bs-btn-bg: #449558;
                --bs-btn-color: #000;
            }
            .btn-lg{
                --bs-btn-font-size: 1.3rem;
                --bs-btn-padding-x: 2rem;
                --bs-btn-padding-y: 0.6rem;
            }

            .dropdowns {
                position: absolute;
                left: 40%;
                top: 15%;
                transform: translate(-50%, -50%);
                display: flex;
                justify-content: center; /* Horizontally center items */
                align-items: center; /* Vertically center items */
            }

            .dropdown1 {
                margin-left: 25rem;

            }
            select{
                border: none;
                background-color: #449558;
                height: 40px;
                width: 80px;
                border-radius: 10px;
                padding: 3px;
            }
            
            form{
                position: absolute;
                left: 48rem;
            }
            
            .selector{
                margin-right: 2rem;
                width: 7.8rem;
                text-align: center;
                color: white;
                font-size: 17px;
            }
            
            .btn1{
                color: black;
                width: 10rem;
                height: 2.5rem;
                border-radius: 8px;
                border: 1px solid black;
            }
               
            .titles{
                font-weight: 900;
            }

        </style>
    </head>
    <body>

        <!-- navbar starts -->
        <div>
            <nav class="navbar navbar-expand-lg" style="background-color: #a5d6a7;">
                <div class="container-fluid">
                    <div class="col-1 d-flex justify-content-end"">
                        <img id="logo" src="logo/book6.png" class="rounded d-block ing-fluid" />
                    </div>
                    <div class="col-7 mx-3">
                        <h3><a id="home" href="index.html">IU BookShelf</a></h3>
                    </div>

                    <div id="subjectDropdown" class="mt-3"></div>
                    <div class="col-4 collapse navbar-collapse" style="margin-left: 15%;">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <a class="nav-link" href="index.html">Home</a>
                            <a class="nav-link" href="fc?type=view&page=LearnView">About Us</a> 
                            <a class="nav-link" href="index.html">Logout</a>
                        </ul>                           
                    </div>
                </div>
            </nav>
        </div>
        <br/><br/>
        <!-- navbar ends -->

        <!--display part--> 



        <div class="d-flex">
            <div class="row" style="width: 100%; display: block; height: 10px;">
                <div class="container">
                    <form action="fc?type=model&page=FilterBooks" method="POST">
                    <!--<div class="dropdowns">-->
                    <!--<div class="dropdown dropdown1 col-3">
                        <button class="btn btn-success btn-lg dropdown-toggle" type="button" id="semesterDropdown" data-bs-toggle="dropdown" aria-expanded="false">
                            Select Year
                        </button>
                        <ul class="dropdown-menu" aria-labelledby="semesterDropdown">
                            <li><a class="dropdown-item" href="#" onclick="selectSemester('Semester 1')">Semester 1</a></li>
                            <li><a class="dropdown-item" href="#" onclick="selectSemester('Semester 2')">Semester 2</a></li>

                        </ul>
                    </div>
                    <div class="dropdown dropdown2 col-3">
                        <button class="btn btn-success btn-lg dropdown-toggle" type="button" id="semesterDropdown" data-bs-toggle="dropdown" aria-expanded="false">
                            Select Semester
                        </button>
                        <ul class="dropdown-menu" aria-labelledby="semesterDropdown">
                            <li><a class="dropdown-item" href="#" onclick="selectSemester('Semester 1')">Semester 1</a></li>
                            <li><a class="dropdown-item" href="#" onclick="selectSemester('Semester 2')">Semester 2</a></li>

                        </ul>
                    </div>
                </div>-->

                    <select class="selector" name="year">
                        <option selected hidden>Year</option>
                        <option value="1">Year 1</option>
                        <option value="2">Year 2</option>
                        <option value="3">Year 3</option>
                        <option value="4">Year 4</option>

                    </select>


                    <select class="selector" name="semester">
                        <option selected hidden>Semester</option>
                        <option value="1">Semester 1</option>
                        <option value="2">Semester 2</option>
                        <option value="3">Semester 3</option>
                        <option value="4">Semester 4</option>
                        <option value="5">Semester 5</option>
                        <option value="6">Semester 6</option>
                        <option value="7">Semester 7</option>
                        <option value="8">Semester 8</option>

                    </select>
                    <button class="btn1 selector" type="submit">Apply Filters</button>
                </form>
                </div>
            </div>
            <div class="row" style="position: relative; bottom: -2rem; right: 8rem; margin-right: -12rem; z-index: -1">
                <c:set var="prevSubject" value="" />
                <c:forEach var="book" items="${bookList}">
                    <c:if test="${book.subject ne prevSubject}">
                        <c:if test="${not empty prevSubject}">
                        </div> <!-- Close previous row -->
                    </c:if>

                    <h3 class="subject_name"><span class="bookspan">${book.subject}</span></h3> <!-- Add heading for new subject -->
                    <div class="row">
                    </c:if>
                    <div class="col-2" style="margin: 0 3rem 0 3rem">
                        <div class="card">
                            <img src="${book.getImgPath()}" class="card-img-top" alt="${book.getImgPath()}"/>
                            <div class="card-body">
                                <p class="para"><span class="titles">Author</span> : ${book.getAuthName()}</p>
                                <p class="para"><span class="titles">Year</span> : ${book.getYear()}</p>
                                <p class="para"><span class="titles">Semester</span> : ${book.getSemester()}</p>
                            </div>
                        </div>
                    </div>
                    <c:set var="prevSubject" value="${book.subject}" />
                </c:forEach>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>
</html>