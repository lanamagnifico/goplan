<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <title>Login page</title>
    <link type = "text/css" href="<c:url value="/static/css/bootstrap.css" />" rel="stylesheet"></link>
    <link type = "text/css"
              href="<c:url value="/static/css/style.css" />" rel="stylesheet"></link>
  </head>

  <body onload='document.f.username.focus();'>
      <div id="mainWrapper">
                 <div class="login-container">
                     <div class="login-card">
                         <div class="login-form">
                           <form action="login" method="POST" name="f" class="form-horizontal">
                              <div class="input-group input-sm">
                               <label class="input-group-addon" for="username"> <i class="fa fa-user"></i> </label>
                               <input class="form-control" type='text' name="username" placeholder="Enter Username" required/><br/>
                              </div>
                              <div class="input-group input-sm">
                               <label class="input-group-addon" for="password"> <i class="fa fa-lock"></i> </label>
                               <input class="form-control" type='password' name="password" placeholder="Enter Password" required/><br/>
                              </div>
                              <div class="form-actions">
                                <input name="submit" type="submit" class="btn btn-block btn-primary btn-default" value="Login"/>
                              </div>
                              <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                           </form>
                          </div>
                     </div>
                 </div>
      </div>
  </body>
</html>