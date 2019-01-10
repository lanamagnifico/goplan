<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <title>Registration Form</title>
    <link rel="stylesheet" type="text/css"
          href="<c:url value="/pages/css/style.css" />" >
     <meta name="_csrf" content="${_csrf.token}"/>
     <meta name="_csrf_header" content="${_csrf.headerName}"/>
  </head>
  <body>
    <h1>Register</h1>
    <sf:form method="POST" commandName="user">
      <sf:label path="name"
            cssErrorClass="error"> Name:
      </sf:label>
      <sf:input path="name"/><br/>
      <sf:label path="password"
                  cssErrorClass="error">  Password:
      </sf:label>
      <sf:password path="password"/><br/>
      <label for="passwordConfirm">Password confirmation: </label>
      <input type="password" id="passwordConfirm" name="passwordConfirm"/> <br/>
      <input type="hidden" name="_csrf_header" value="_csrf"/>
      <input type="submit" value="Register" />
    </sf:form>
    <a href="<c:url value="/"/>">Back
      </a>
  </body>
</html>