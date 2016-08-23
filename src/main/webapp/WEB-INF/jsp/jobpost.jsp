<%-- 
    Document   : jobs
    Created on : Jun 15, 2016, 1:32:36 PM
    Author     : tmeku4692
--%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
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
        <div>
            <div id="mainmenu">
                <ul>
                    <li><a href="index.htm">Home</a></li> 
                    <li><a href="applicant.htm">Applicant</a></li> 
                    <li id="jobs"><a href="jobs.htm ">Jobs</a>
                        <ul id="jobMenu">
                            <li><a href="jobSearch.htm">Search for a Job</a></li>
                            <li><a href="jobPost.htm">Post a Job</a></li>
                        </ul>
                    </li>
                    <ul id="authenticate">
                        <li><a href="#">${user}</a></li>
                        <li><a href="index.htm">Log Out</a></li> 
                    </ul>
                </ul>
                 
            </div>
            <h2>Please fill all information and Submit when you are done</h2>
            <fieldset>
                <legend><b>Job Post</b></legend>
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
                        <input class="submit" type="submit" value="Post"  > 
                </form:form>
            </fieldset>
        </div>
         <%@ include file="footer.html" %>
    </body>
</html> 
