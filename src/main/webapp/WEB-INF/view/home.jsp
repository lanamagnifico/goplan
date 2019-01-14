<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ page session="false" %>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Go Plan</title>
    <link type = "text/css" href="<c:url value="/static/css/bootstrap.css" />" rel="stylesheet"></link>
    <link type = "text/css" href="<c:url value="/static/css/style.css" />" rel="stylesheet"></link>
  </head>
  <body>
    <div class="success">
    <h1>Welcome to Planner</h1>
    <div class="success">
    <div class="username">
        <sec:authorize access="isAnonymous()">
          <a href="<c:url value="/login"/>">
        	    Sign in
              </a>  |
              <a href="<c:url value="/register"/>">
                Registeration
              </a>
    	</sec:authorize>
        <sec:authorize access="isAuthenticated()">
            Welcome, <strong><sec:authentication property="principal.username"/></strong>
                |
                   <form method="post" action="logout">
                       <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                         <input name="submit" type="submit" value="Exit"/>
                    </form>
            </sec:authorize>
        </div>

  </body>
</html>