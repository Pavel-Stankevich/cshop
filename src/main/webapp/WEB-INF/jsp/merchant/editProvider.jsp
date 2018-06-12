<%@ page language="java" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui" tagdir="/WEB-INF/tags" %>
<ui:html title="CShop - Поставщики">
  <nav aria-label="breadcrumb" class="padding-15">
    <ol class="breadcrumb">
      <li class="breadcrumb-item"><a href="<c:url value="/merchant/providers.html"/>">Поставщики</a></li>
      <li class="breadcrumb-item active" aria-current="page">
        <c:if test="${empty provider.id}">Новый поставщик</c:if>
        <c:if test="${not empty provider.id}">${provider.id}: ${provider.name}</c:if>
      </li>
    </ol>
  </nav>

  <form:form method="POST" modelAttribute="provider">
    <ui:input label="Наименование" id="name" type="text" value="${provider.name}" required="true" autofocus="true"/>
    <div>
      <c:if test="${not empty provider.id}">
        <input type="hidden" name="id" value="${provider.id}" />
      </c:if>
      <a class="btn btn-danger" href="<c:url value="/merchant/providers.html"/>"><ui:icon name="ban"/> Отменить</a>
      <button class="btn btn-info" type="submit"><ui:icon name="floppy-o"/> Сохранить</button>
    </div>
  </form:form>

</ui:html>
