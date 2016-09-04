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
                    <li><a href="profile/${sessionScope.applicantID}"> Profile</a></li> 
                           
                    <li id="jobs"><a href="jobs ">Job</a>
                        <ul id="jobMenu">
                            <li><a href="jobs">Search for a Job</a></li>
                            <li><a href="jobpost">Post a Job</a></li>
                        </ul>
                    </li> 
                    
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
            <h3>Filter Jobs</h3> 
                    <form:form method="POST">
                        By Category  
                        <select name="category" >
                            <option></option>
                              <c:forEach var="job" items="${filteredJobs}" varStatus="status">  
                                 <option>${job.category}</option> 
                              </c:forEach>  
                                </select> 
                        By Location  
                        <select name="location" >
                                <option></option>
                                <c:forEach var="job" items="${filteredJobs}" varStatus="status">                       
                                    <option>${job.location}</option> 
                                </c:forEach>   
                        </select> &ensp;&ensp;
                        OR Enter Key Word &ensp;&ensp;<input type="text" name="keyWord" placeholder="Key Word">
                        &ensp;&ensp;<input type="submit" value="Update"> 
                        &ensp;&ensp;<a href="jobs.htm ">Show All</a>
                    </form:form> <br>   
                    <c:forEach var="job" items="${allJobs}" varStatus="status">                       
                        <h2><a id="job-title" href="#">${job.jobTitle}</a></h2>
                        <p><b>Employer: </b>${job.employerName}</p>
                        <p><b>Location </b>${job.location}</p>
                        <p><b>Salary </b>${job.salary}</p>
                        <p><b>Employer Website: </b><a href="#" >${job.employerWebsite}</a></p> 
                        <p><b>Job Description: </b><br><p>${job.jobDescription}</p>
                        <b>Job Requirements: </b><br><p>${job.requirements}</p>
                        <p><b>Application Deadline: </b>${job.applicationDeadline}</p>
                        <a href="login" class="btn btn-primary">Apply Here</a> <br><br>
                </c:forEach>  
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
