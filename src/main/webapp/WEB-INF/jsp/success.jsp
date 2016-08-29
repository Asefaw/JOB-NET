<%-- 
    Document   : login
    Created on : Jun 17, 2016, 9:51:32 PM
    Author     : A
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
        <title>Welcome to Job Network</title> 
    </head>

    <body> 
        <div>
            <div id="mainmenu">
                <ul>
                    <li><a href="<c:url value="/index" />">Home</a></li> 
                    <ul id="authenticate">
                        <li><a href="#">${currentUser}</a></li>
                        <li><a href="<c:url value="/login" />">Sign In</a></li>
                        <li><a href="<c:url value="registration" />">Sign up</a></li>
                    </ul>
                </ul>
            </div>
                        <div align="center" style="color: green">
                            <h1>${message}</h1>
                            <h1><a href="<c:url value="/index" />">Home</a></h1>
                        </div>
         
        </div>
         <%@ include file="footer.html" %>
    </body>
</html>


 
 
