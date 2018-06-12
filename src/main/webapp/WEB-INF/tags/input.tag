<%@ tag language="java" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ attribute name="label" required="true" %>
<%@ attribute name="id" required="true" %>
<%@ attribute name="type" required="true" %>
<%@ attribute name="cssClass" required="false" %>
<%@ attribute name="value" required="false" %>
<%@ attribute name="required" required="false" %>
<%@ attribute name="autofocus" required="false" %>
<%@ attribute name="suppplyId" required="false" %>
<div class="form-group">
  <label for="${id}">${label}</label>
  <input id="${id}" name="${id}" type="${type}" class="form-control <c:if test="${not empty cssClass}">${cssClass}</c:if>"
      <c:if test="${not empty value}"> value="${fn:replace(value, '\"', '&quot;')}"</c:if>
      <c:if test="${not empty label}"> placeholder="${label}"</c:if>
      <c:if test="${not empty suppplyId}"> data-supply-id="${suppplyId}"</c:if>
      <c:if test="${not empty required and required ne 'false'}"> required</c:if>
      <c:if test="${not empty autofocus and autofocus ne 'false'}"> autofocus</c:if> />
</div>
