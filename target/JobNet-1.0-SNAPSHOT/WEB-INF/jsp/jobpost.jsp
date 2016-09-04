<!DOCTYPE html>
<html lang="en">
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Job-Net</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/heroic-features.css" rel="stylesheet">

    
        <spring:url value="/resources/css/bootstrap.min.css" var="bootstrap" />
        <spring:url value="/resources/css/heroic-features.css" var="index" />
        <link href="${index}" rel="stylesheet" />
        <link href="${bootstrap}" rel="stylesheet" /> 
</head>

<body>

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">JOB-NET</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li><a href="index">Home</a></li>  
                    
                </ul>
                <ul class="authentication">
                    <li class="auth">${logout}</li> 
                    <li class="authentication"><a href="index">Log Out</a></li>  
                    <li class="authentication"><a href="profile">${name}</a></li> 
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Page Content -->
    <div class="container">

        <!-- Jumbotron Header -->
        <h2>Please fill all information and Submit when you are done</h2>
        <header class="jumbotron hero-spacer"> 
            <fieldset> 
                <form:form name="jobPost" method="POST">
                     
                    Employer Name:<input type="text" name="employerName" required> <br><br>
                        Employer Website:<input type="text" name="employerWebsite" required> <br><br>
                                    Job Category:
                                            <select name="category">
                                                <option>IT</option>
                                                <option>Business</option>
                                                <option>Finance</option>
                                                <option>Health Care</option>
                                            </select> <br><br>
                        Position Title:<input type="text" name="jobTitle" required> <br><br>
                        Position Type:
                                <select name="positionType" required>
                                    <option></option>
                                    <option>Full time</option>
                                    <option>Part time</option>
                                    <option>Contract</option>
                                    <option>Paid Internship</option>
                                    <option>UnPaid Internship</option>
                                    <option>Temporary</option>
                                </select> <br><br>
                        Job Description: <br>
                        <textarea rows="4" cols="50" name="jobDescription" required></textarea> <br><br>
                        Requirements: <br>
                        <textarea rows="4" cols="50" name="requirements" required=""></textarea> <br><br>
                        Application Deadline:<input name="applicationDeadline" type="date" required> <br><br>
                        Job Location:<input type="text" name="location" required> <br><br>
                        Job Salary:<input type="text" name="salary" required> <br><br>
                        <input name="postedBY" type="hidden" value="${sessionScope.applicantId}" > 
                        <input class="btn btn-primary" type="submit" value="Post"  > 
                </form:form>
            </fieldset>
        </header>

        <hr> 
        <!-- /.row -->

        <!-- Page Features -->
        <div class="row text-center">

            <div class="col-md-3 col-sm-6 hero-feature">
                <div class="thumbnail"> 
                    <div class="caption"> 
                             
                    </div>
                </div>
            </div> 
             

        </div> 
        <!-- /.row -->

        <hr>
        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; JOB-NET 2016</p>
                </div>
            </div>
        </footer>

    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

</body>

</html>
