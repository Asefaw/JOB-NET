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
                    <li class="authentication"><a href="<c:url value="index" />">Log Out</a></li> 
                    <li class="authentication"><a href="<c:url value="profile" />">${name}</a></li> 
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Page Content -->
    <div class="container">

        <!-- Jumbotron Header -->
        <h2>LogIn Information</h2>
        <header class="jumbotron hero-spacer">   
            <form:form name="applicantForm" method="post" action="update" >
                <fieldset>
                    <legend><b>Applicant Information</b></legend>
                    <table> 
                        <c:forEach var="user" items="${currentUser}" varStatus="status"> 
                            <tr><td>First Name:</td><td><input type="text" value="${user.firstName}"></td></tr>
                            <tr><td>Last Name: </td><td><input name="lastName" type="text" value="${user.lastName}"></td></tr>  
                            <tr><td>Email Address: </td><td><input name="email" type="text" value="${user.email}"></td></tr> 
                            <tr><td>Phone Number: </td><td><input name="phone" type="text" value="${user.phone}"></td></tr>
                            <tr><td>Address: </td><td><input name="address" type="text" value="${user.address}"></td></tr>
                            <tr><td>Profession: </td><td><input name="profession" type="text" value="${user.profession}"></td></tr>
                            <tr><td>Web Site: </td><td><input name="webSite" type="text" value="${user.webSite}"></td></tr>
                            <tr><td>LinkedIn: </td><td><input name="linkedIn" type="text" value="${user.linkedIn}"></td></tr>
                            <tr><td>GitHub URL: </td><td><input name="gitHubUrl" type="text" value="${user.gitHubUrl}"></td></tr
                            <tr><td> <input type="hidden" name="applicantId" value="${sessionScope.applicantID}"></td></tr>
                            <tr><td colspan="2" align="right" ><input type="submit" value="Update"></td></tr> 
                        </c:forEach>
                    </table>
                    <a href="<c:url value="/resume" />"> Add Resume</a>
                        <div style="color:red">${error}</div>
                </fieldset>
            </form:form>
        </header>
        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        <hr>  
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
