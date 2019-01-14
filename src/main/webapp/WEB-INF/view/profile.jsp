<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <title>Profie</title>
    <link type = "text/css" href="<c:url value="/static/css/bootstrap.css" />"  rel="stylesheet"></link>
    <link type = "text/css"
              href="<c:url value="/static/css/style.css" />" rel="stylesheet"></link>
  </head>

  <body>
    <h1><c:out value="${user.name}"/></h1>
    </body>
  </html>