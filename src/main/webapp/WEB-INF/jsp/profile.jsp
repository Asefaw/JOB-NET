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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Applicant Page</title>
         
    </head>
    <body> 
        <div>
            <div id="mainmenu">
                <ul>
                    <li><a href="index.htm">Home</a></li> 
                    <li><a href="profile">Applicant</a></li> 
                    <li><a href="jobs.htm ">Jobs</a></li>
                    <ul id="authenticate">
                        <li><a href="login.htm">Sign In</a></li>
                        <li><a href="register.htm">Sign up</a></li>
                    </ul>
                </ul>
            </div>
            <h1>Please Fill Out All Information</h1>
             
            <form:form name="applicantForm" method="post">
                <fieldset>
                    <legend><b>Applicant Information</b></legend>
                    <table>
                        <c:forEach var="user" items="${applicantProfile}" varStatus="status">  
                         
                        <tr><td>First Name: ${applicantProfile.firstName}</td></tr>
                        <tr><td>Last Name: </td><td><input name="lastName" type="text" required></td></tr>  
                        <tr><td>Email Address: </td><td><input name="email" type="text" required></td></tr>
                        <tr><td>Email Address: </td><td><input name="password" type="password" required></td></tr>
                        <tr><td>Phone Number: </td><td><input name="phone" type="text" required></td></tr>
                        <tr><td>Address: </td><td><input name="address" type="text" required></td></tr>
                        <tr><td>Profession: </td><td><input name="profession" type="text" required></td></tr>
                        <tr><td>Web Site: </td><td><input name="webSite" type="text" required></td></tr>
                        <tr><td>LinkedIn: </td><td><input name="linkedIn" type="text" required></td></tr>
                        <tr><td>GitHub URL: </td><td><input name="gitHubUrl" type="text" required></td></tr>  
                        <tr><td colspan="2" align="right" ><input type="submit" value="Submit"></td></tr>
                        </c:forEach>
                    </table>
                        <div style="color:red">${error}</div>
                </fieldset>
            </form:form>
             
        </div>
         ${userProfile}
         <%@include file="footer.html" %>
    </body>
</html> 
