<%@ page language="java" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui" tagdir="/WEB-INF/tags" %>
<ui:html title="CShop - Поставки">
  <nav aria-label="breadcrumb" class="padding-15">
    <ol class="breadcrumb">
      <li class="breadcrumb-item"><a href="<c:url value="/merchant/supplies.html"/>">Поставки</a></li>
      <li class="breadcrumb-item active" aria-current="page">
        <c:if test="${empty supply.id}">Новая поставка</c:if>
        <c:if test="${not empty supply.id}">${supply.id}: ${supply.product.name}</c:if>
      </li>
    </ol>
  </nav>

  <form:form method="POST" modelAttribute="supply">
    <div class="form-group">
      <label for="provider">Поставщик</label>
      <select class="form-control" id="provider" name="provider" required autofocus>
        <c:forEach var="provider" items="${providers}">
          <option <c:if test="${provider.id eq supply.provider.id}">selected </c:if>value="${provider.id}">${provider.name}</option>
        </c:forEach>
      </select>
    </div>
    <div class="form-group">
      <label for="product">Продукт</label>
      <select class="form-control" id="product" name="product" required>
        <c:forEach var="product" items="${products}">
          <option <c:if test="${product.id eq supply.product.id}">selected </c:if>value="${product.id}">${product.name}</option>
        </c:forEach>
      </select>
    </div>
    <ui:input label="Цена поставки" id="supplyPrice" type="text" cssClass="price" value="${supply.supplyPrice}" required="true"/>
    <ui:input label="Кол-во" id="count" type="number" cssClass="count" value="${supply.count}" required="true"/>
    <div>
      <c:if test="${not empty supply.id}">
        <input type="hidden" name="id" value="${supply.id}" />
      </c:if>
      <a class="btn btn-danger" href="<c:url value="/merchant/supplies.html"/>"><ui:icon name="ban"/> Отменить</a>
      <button class="btn btn-info" type="submit"><ui:icon name="floppy-o"/> Сохранить</button>
    </div>
  </form:form>

</ui:html>
