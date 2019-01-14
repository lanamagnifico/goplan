<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <title>Registration Form</title>
    <link type = "text/css" href="<c:url value="/static/css/bootstrap.css" />" rel="stylesheet"></link>
    <link type = "text/css"
          href="<c:url value="/static/css/style.css" />" rel="stylesheet"></link>
     <meta name="_csrf" content="${_csrf.token}"/>
     <meta name="_csrf_header" content="${_csrf.headerName}"/>
  </head>
  <body>
    <div class="form-container">
      <h1>New User Registration Form</h1>
      <sf:form method="POST" commandName="user" cssClass="form-horizontal">
        <div class="row">
           <div class="form-group col-md-12">
             <sf:label path="name" cssClass="col-md-3 control-lable" cssErrorClass="error"> Name: </sf:label>
             <div class="col-md-7">
               <sf:input cssClass="form-control input-sm" path="name"/><br/>
             </div>
           </div>
        </div>
        <div class="row">
           <div class="form-group col-md-12">
             <sf:label path="password"  cssClass="col-md-3 control-lable"  cssErrorClass="error">  Password: </sf:label>
             <div class="col-md-7">
               <sf:password path="password"/><br/>
             </div>
           </div>
        </div>
        <div class="row">
           <div class="form-group col-md-12">
              <label for="passwordConfirm">Password confirmation: </label>
              <div class="col-md-7">
                <input type="password" id="passwordConfirm" name="passwordConfirm"/> <br/>
              </div>
           </div>
        </div>

      <input type="hidden" name="_csrf_header" value="_csrf"/>

      <div class="row">
         <div class="form-actions floatRight">
           <input type="submit" value="Register" />
         </div>
      </div>
    </sf:form>
    </div>
  </body>
</html>