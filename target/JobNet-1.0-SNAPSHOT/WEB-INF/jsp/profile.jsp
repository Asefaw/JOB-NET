<%-- 
    Document   : jobs
    Created on : Jun 15, 2016, 1:32:36 PM
    Author     : tmeku4692
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                    <li><a href="profile/${sessionScope.applicantID}"> Profile</a></li> 
                    <li><a href="jobs.htm ">Jobs</a></li>
                    <ul id="authenticate">
                        <li><a href="login.htm">Sign In</a></li>
                        <li><a href="register.htm">Sign up</a></li>
                    </ul>
                </ul>
            </div> <br><br>
            <div >
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
                            <tr><td>GitHub URL: </td><td><input name="gitHubUrl" type="text" value="${user.gitHubUrl}"></td></tr>  
                            <tr><td colspan="2" align="right" ><input type="submit" value="Update"></td></tr> 
                        </c:forEach>
                    </table>
                        <div style="color:red">${error}</div>
                </fieldset>
            </form:form>
        </div>   
        </div> 
         <%@include file="footer.html" %>
    </body>
</html> 
