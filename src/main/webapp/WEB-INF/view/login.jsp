<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <title>HR-manager</title>
    <link rel="stylesheet" type="text/css"
              href="<c:url value="/pages/css/style.css" />" >
  </head>

  <body onload='document.f.username.focus();'>
     <form action="login" method="POST" name="f">
           <label for="username">
              Name:
           </label>
           <input type='text' name="username" value=''/><br/>

           <label path="password">
               Password:
           </label>
           <input type='password' name="password"/><br/>
           <input name="submit" type="submit" value="Login"/>
           <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
         </form>
          <a href="<c:url value="/"/>">Back
               </a>
       </body>
</html>