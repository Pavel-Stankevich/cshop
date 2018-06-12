<%@ page language="java" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui" tagdir="/WEB-INF/tags" %>
<ui:html title="CShop - Адреса">
  <nav aria-label="breadcrumb" class="padding-15">
    <ol class="breadcrumb">
      <li class="breadcrumb-item"><a href="<c:url value="/profile.html"/>">Профиль</a></li>
      <li class="breadcrumb-item active" aria-current="page">
        <c:if test="${empty address.id}">Новый ардес</c:if>
        <c:if test="${not empty address.id}">${address.city} ${address.adds}</c:if>
      </li>
    </ol>
  </nav>

  <form:form method="POST" modelAttribute="address">
    <div class="form-group">
    <ui:input label="ФИО" id="fio" type="text" value="${address.fio}" required="true"/>
    <ui:input label="Номер телефона" id="phoneNumber" type="tel" value="${address.phoneNumber}" cssClass="tel" required="true"/>
    <ui:input label="Область" id="region" type="text" value="${address.region}" required="true"/>
    <ui:input label="Город" id="city" type="text" value="${address.city}" required="true"/>
    <ui:input label="Адрес" id="adds" type="text" value="${address.adds}" required="true"/>
    <ui:input label="Индекс" id="postcode" type="text" cssClass="postcode" value="${address.postcode}" required="true"/>
    <div>
      <c:if test="${not empty address.id}">
        <input type="hidden" name="id" value="${address.id}" />
      </c:if>
      <a class="btn btn-danger" href="<c:url value="/profile.html"/>"><ui:icon name="ban"/> Отменить</a>
      <button class="btn btn-info" type="submit"><ui:icon name="floppy-o"/> Сохранить</button>
    </div>
  </form:form>

</ui:html>
