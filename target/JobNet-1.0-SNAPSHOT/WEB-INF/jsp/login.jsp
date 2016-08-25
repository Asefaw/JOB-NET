<%-- 
    Document   : login
    Created on : Jun 17, 2016, 9:51:32 PM
    Author     : A
--%> 
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
                    <li><a href="index.htm">Home</a></li> 
                    <ul id="authenticate">
                        <li><a href="#">${currentUser}</a></li>
                        <li><a href="login.htm">Sign In</a></li>
                        <li><a href="registration.htm">Sign up</a></li>
                    </ul>
                </ul>
            </div>
        <h4>User Login.</h4>  <h3>Welcome ${currentUser}</h3>
        <h1 align="center" style="color: green">${message}</h1>
        <form:form method="post" name="loginForm">
            <fieldset>
                 
                <legend><b>LogIn Information</b></legend>
                <table>
                    <tr><td>User Name: </td><td><input name="userName" type="text"></td></tr>
                    <tr><td>Password: </td><td><input name="password" type="password"></td></tr>
                    <tr><td colspan="2" align="right"><input type="submit" value="Submit"></td></tr>
                </table>
                <div style="color:red">${error}</div>
            </fieldset>
        </form:form> 
        </div>
         <%@ include file="footer.html" %>
    </body>
</html>


 
 
