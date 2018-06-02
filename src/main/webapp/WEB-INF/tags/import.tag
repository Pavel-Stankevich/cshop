<%@ tag language="java" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ attribute name="type" required="true" %>
<%@ attribute name="link" required="true" %>
<c:url var="link" value="${link}"/>
<c:if test="${type eq 'js'}">
  <script type="text/javascript" src="${link}"></script>
</c:if>
<c:if test="${type eq 'css'}">
  <link type="text/css" rel="stylesheet" href="${link}"/>
</c:if>
