<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <title>Profie</title>
    <link rel="stylesheet" type="text/css"
              href="<c:url value="/pages/css/style.css" />" >
  </head>

  <body>
    <h1><c:out value="${user.name}"/></h1>
    </body>
  </html>