<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
    <head>
        <spring:url value="/resources/css/main.css" var="main" />
        <spring:url value="/resources/css/bootstrap-theme.min.css" var="bootstrap-min" />
        <spring:url value="/resources/css/index.css" var="index" />
        <link href="${index}" rel="stylesheet" />
        <link href="${bootstrap-min}" rel="stylesheet" />
        <link href="${main}" rel="stylesheet" />
        <title>Welcome to Job Network</title> 
    </head>

    <body> 
        <div>
            <div id="mainmenu">
                <ul>
                    <li><a href="index.htm">Home</a></li> 
                     
                    <ul id="authenticate">
                        <li>${logout}</li>
                        <li><a href="login.htm">Sign In</a></li>
                        <li><a href="registration.htm">Sign up</a></li>
                    </ul>
                </ul>
            </div>
             

        </div>
        <h1 align="center">Welcome to JobNet Where you can find your Dream Job.</h1> 
        <div class="container"><br><br><br><br>
            <div class="left-container">
                <h2> All of your dream jobs are here</h2>
                <c:forEach var="job" items="${topFive}" varStatus="status" >
                    <a id="job-title" href="jobs.htm">${job.jobTitle}</a> 
                    <p><b>${job.location}, &ensp;&ensp;$ ${job.salary}</b></p> 
                </c:forEach>
                        <a href="jobs.htm" id="view-more-jobs">View More Jobs</a>
                    <br><br><br><br><br><br><br><br>
            </div>
            <div class="right-container">
                <h2>Latest technology Trends</h2>
                <p> <a href="oracle.htm" target="_blank">Oracle</a></p>
                    <p> <a href="oracle.htm" target="_blank">Oracle</a></p>
                    <p> <a href="oracle.htm" target="_blank">Oracle</a></p>
                    <p> <a href="oracle.htm" target="_blank">Oracle</a></p> 
                    <br><br><br><br><br><br><br><br><br>
            </div>
        </div> <br><br><br>
        <div class="bottom-container" >
            <h2>Useful Links</h2>
                <ul>
                    <li> <a href="google.htm" target="_blank">Google</a></li>
                    <li> <a href="quora.htm" target="_blank">Quora Digest</a></li>
                    <li> <a href="medium.htm" target="_blank">Medium</a></li>
                    <li> <a href="linkedin.htm" target="_blank">Linkedin</a></li>
                </ul>
        </div>
      <%@ include file="footer.html" %>
    </body>
</html>
