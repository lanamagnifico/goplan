<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ page session="false" %>
<html>
  <head>
    <title>Go Plan</title>
    <link rel="stylesheet"
          type="text/css"
          href="<c:url value="/resources/style.css" />" >
  </head>
  <body>
    <h1>Welcome to Planner</h1>
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