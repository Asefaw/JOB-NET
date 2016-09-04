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
        <spring:url value="/resources/js/jquery.js" var="jquery" />
        <spring:url value="/resources/js/bootstrap.min.js" var="bootstrapmin" />
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
                    <li class="authentication"><a href="registration">Sign up</a></li>
                    <li class="authentication"><a href="login">Sign In</a></li> 
                       
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Page Content -->
    <div class="container">

        <!-- Jumbotron Header -->
        <header class="jumbotron hero-spacer">
            <h1>A Warm Welcome!</h1>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa, ipsam, eligendi, in quo sunt possimus non incidunt odit vero aliquid similique quaerat nam nobis illo aspernatur vitae fugiat numquam repellat.</p>
            <p><a class="btn btn-primary btn-large">Call to action!</a>
            </p>
        </header>

        <hr>

        <!-- Title -->
        <div class="row">
            <div class="col-lg-12">
                <h2> Currently Available Positions</h2>
            </div>
        </div>
        <!-- /.row -->

        <!-- Page Features -->
        <div class="row text-center">

            <div class="col-md-3 col-sm-6 hero-feature">
                <div class="thumbnail"> 
                    <div class="caption"> 
                            <c:forEach var="job" items="${topFive}" varStatus="status" >
                                <a id="job-title" href="jobs.htm">${job.jobTitle}</a> 
                                <p><b>${job.location}, &ensp;&ensp;$ ${job.salary}</b></p> 
                            </c:forEach>
                        <p>
                            <a href="login" class="btn btn-primary">View More</a> 
                        </p>
                    </div>
                </div>
            </div>

            <div class="col-md-3 col-sm-6 hero-feature">
                 <div class="thumbnail"> 
                    <div class="caption">
                        <c:forEach var="job" items="${topFive}" varStatus="status" >
                                <a id="job-title" href="jobs.htm">${job.jobTitle}</a> 
                                <p><b>${job.location}, &ensp;&ensp;$ ${job.salary}</b></p> 
                            </c:forEach>
                        <p>
                            <a href="login" class="btn btn-primary">View More</a> 
                        </p>
                    </div>
                </div>
            </div>
            

            <div class="col-md-3 col-sm-6 hero-feature">
                <div class="thumbnail"> 
                    <div class="caption">
                        <c:forEach var="job" items="${topFive}" varStatus="status" >
                                <a id="job-title" href="jobs.htm">${job.jobTitle}</a> 
                                <p><b>${job.location}, &ensp;&ensp;$ ${job.salary}</b></p> 
                            </c:forEach>
                        <p>
                            <a href="login" class="btn btn-primary">View More</a> 
                        </p>
                    </div>
                </div>
            </div>

            <div class="col-md-3 col-sm-6 hero-feature">
                <div class="thumbnail"> 
                    <div class="caption">
                        <c:forEach var="job" items="${topFive}" varStatus="status" >
                                <a id="job-title" href="jobs.htm">${job.jobTitle}</a> 
                                <p><b>${job.location}, &ensp;&ensp;$ ${job.salary}</b></p> 
                            </c:forEach>
                        <p>
                            <a href="login" class="btn btn-primary">View More</a> 
                        </p>
                    </div>
                </div>
            </div>

        </div>
        <!-- /.row -->

        <hr>

         <!-- Title -->
        <div class="row">
            <div class="col-lg-12">
                <h2> Latest Technology Trends</h2>
            </div>
        </div>
        <div class="row text-center">

            <div class="col-md-3 col-sm-6 hero-feature">
                <div class="thumbnail"> 
                    <div class="caption"> 
                        <p> <a href="oracle.htm" target="_blank">Oracle</a></p>
                        <p> <a href="oracle.htm" target="_blank">Oracle</a></p>
                        <p> <a href="oracle.htm" target="_blank">Oracle</a></p>
                        <p> <a href="oracle.htm" target="_blank">Oracle</a></p>  
                    </div>
                </div>
            </div>

            <div class="col-md-3 col-sm-6 hero-feature">
                 <div class="thumbnail"> 
                    <div class="caption">
                        <p> <a href="oracle.htm" target="_blank">Oracle</a></p>
                        <p> <a href="oracle.htm" target="_blank">Oracle</a></p>
                        <p> <a href="oracle.htm" target="_blank">Oracle</a></p>
                        <p> <a href="oracle.htm" target="_blank">Oracle</a></p>  
                    </div>
                </div>
            </div>
            

            <div class="col-md-3 col-sm-6 hero-feature">
                <div class="thumbnail"> 
                    <div class="caption">
                        <p> <a href="oracle.htm" target="_blank">Oracle</a></p>
                        <p> <a href="oracle.htm" target="_blank">Oracle</a></p>
                        <p> <a href="oracle.htm" target="_blank">Oracle</a></p>
                        <p> <a href="oracle.htm" target="_blank">Oracle</a></p>  
                    </div>
                </div>
            </div>

            <div class="col-md-3 col-sm-6 hero-feature">
                <div class="thumbnail"> 
                    <div class="caption">
                        <p> <a href="oracle.htm" target="_blank">Oracle</a></p>
                        <p> <a href="oracle.htm" target="_blank">Oracle</a></p>
                        <p> <a href="oracle.htm" target="_blank">Oracle</a></p>
                        <p> <a href="oracle.htm" target="_blank">Oracle</a></p>  
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="${jquery}"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="${bootsrapmin}"></script>

</body>

</html>
