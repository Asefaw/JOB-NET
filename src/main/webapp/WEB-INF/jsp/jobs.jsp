<%-- 
    Document   : jobs
    Created on : Jun 15, 2016, 1:32:36 PM
    Author     : tmeku4692
--%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="applicant_id" value="${sessionScope.applicantID}"/>
<html>
    <head>
        <spring:url value="/resources/css/main.css" var="main" />
        <spring:url value="/resources/css/bootstrap-theme.min.css" var="bootstrap-min" />
        <spring:url value="/resources/css/bootstrap-theme.css" var="bootstrap-min-theme-css" />
        <spring:url value="/resources/css/bootstrap.css" var="bootstrap-css" />
        <spring:url value="/resources/css/bootstrap.min.css" var="bootstrap-min-css" />
        
        
        <spring:url value="/resources/js/bootstrap.js" var="bootstrap-js" />
        <spring:url value="/resources/js/bootstrap.min.js" var="bootstrap-min-js" />
        <spring:url value="/resources/js/npm.js" var="bootstrap-npm-js" />
        <spring:url value="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js" var="jquery-api" />
        <link href="${bootstrap-min-theme-css}" rel="stylesheet" />
        <link href="${bootstrap-css}" rel="stylesheet" />
        <link href="${bootstrap-min}" rel="stylesheet" />
        <link href="${bootstrap-min-css}" rel="stylesheet" />
        
        <script src="${jquery-api}"></script>
        <script src="${bootstrap-js}"> </script>
        <script src="${bootstrap-min-js}"></script>
        <script src="${bootstrap-npm-js}"></script>
        <link href="${main}" rel="stylesheet" />
        <title>Jobs Page</title> 
    </head>
    <body> 
        <nav id="mainmenu">
                <ul>
                    <li><a href="index.htm">Home</a></li> 
                    <li><a href="profile/${sessionScope.applicantID}"> Profile</a></li> 
                           
                    <li id="jobs"><a href="jobs.htm ">Job</a>
                        <ul id="jobMenu">
                            <li><a href="jobSearch.htm">Search for a Job</a></li>
                            <li><a href="jobpost.htm">Post a Job</a></li>
                        </ul>
                    </li>
                    <ul id="authenticate">
                        <li><a href="#">${name}</a></li>
                        <li><a href="index.htm">Log Out</a></li> 
                    </ul>
                </ul>
        </nav>  
        <div id="wrapper">
            <h1>${status}</h1>
            <div id="availableJobs">
                <h2>Available Jobs</h2> 
                 <div id="job-filter">
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
            </div>
                    <c:forEach var="job" items="${allJobs}" varStatus="status">                       
                        <a id="job-title" href="#">${job.jobTitle}</a>
                        <p><b>Employer: </b>${job.employerName}</p>
                        <p><b>Location </b>${job.location}</p>
                        <p><b>Salary </b>${job.salary}</p>
                        <p><b>Employer Website: </b><a href="#" >${job.employerWebsite}</a></p> 
                        <p><b>Job Description: </b><br><p>${job.jobDescription}</p>
                        <b>Job Requirements: </b><br><p>${job.requirements}</p>
                        <p><b>Application Deadline: </b>${job.applicationDeadline}</p>
                        <p id="applyForJobBtn"><a href="#">Apply Here</a></p>
                </c:forEach> 
            </div>
            
        </div>
            <%@ include file="footer.html" %>
    </body>
</html> 
