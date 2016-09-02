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
                    <li><a href="<c:url value='/index' />">Home</a></li> 
                    <li><a href="profile/${sessionScope.applicantID}"> Profile</a></li> 
                    <li><a href="<c:url value='/jobs' />">Jobs</a></li>
                    <ul id="authenticate"> 
                        <li><a href="<c:url value='/index' />">Log Out</a></li>
                    </ul>
                </ul>
            </div> <br><br>
            <div >
                <form:form  method="post" action="addresume" enctype="multipart/form-data" >
                <fieldset>
                    <legend><b>Add Resume</b></legend><br><br>
                       Resume: <input name="resume" type="file">
                       <input type="hidden" name="applicantId" value="${sessionScope.applicantID}"> <br><br>
                        <input align="right" type="submit" value="Submit"><br><br>
                         
                        <div style="color:red">${error}</div>
                </fieldset>
            </form:form>
        </div>   
        </div> 
         <%@include file="footer.html" %>
    </body>
</html> 
