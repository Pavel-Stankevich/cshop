<%@ tag language="java" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="ui" tagdir="/WEB-INF/tags" %>
<%@ attribute name="title" required="false" %>
<%@ attribute name="additionalCss" required="false" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <ui:import type="css" link="/css/bootstrap.min.css"/>
  <ui:import type="css" link="/css/app.css"/>
  <c:if test="${not empty title}">
    <title>${title}</title>
  </c:if>
</head>
<body>
<ui:navbar/>
<div class="container-fluid">
  <jsp:doBody/>
</div>
  <ui:import type="js" link="/js/jquery-3.3.1.slim.min.js"/>
<ui:import type="js" link="/js/popper.min.js"/>
<ui:import type="js" link="/js/bootstrap.min.js"/>
<ui:import type="js" link="/js/app.js"/>
</body>
</html>
