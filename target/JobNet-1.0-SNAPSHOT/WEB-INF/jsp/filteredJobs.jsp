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
<html>
    <head>
        <spring:url value="/resources/css/main.css" var="main" />
        <link href="${main}" rel="stylesheet" />
        <title>Jobs Page</title> 
    </head>
    <body> 
        <nav id="mainmenu">
                <ul>
                    <li><a href="index.htm">Home</a></li> 
                    <li><a href="applicant.htm">Applicant</a></li> 
                    <li id="jobs"><a href="jobs.htm ">Job</a>
                        <ul id="jobMenu">
                            <li><a href="jobSearch.htm">Search for a Job</a></li>
                            <li><a href="jobpost.htm">Post a Job</a></li>
                        </ul>
                    </li>
                    <ul id="authenticate">
                        <li><a href="#">${user}</a></li>
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
                        <select name="category" required>
                            <option></option>
                              <c:forEach var="job" items="${allJobs}" varStatus="status">  
                                 <option>${job.category}</option> 
                              </c:forEach>  
                                </select> 
                        By Location  
                        <select name="location" required>
                                <option></option>
                                <c:forEach var="job" items="${allJobs}" varStatus="status">                       
                                    <option>${job.location}</option> 
                                </c:forEach>   
                            </select> 
                        <input type="submit" value="Update"> 
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
