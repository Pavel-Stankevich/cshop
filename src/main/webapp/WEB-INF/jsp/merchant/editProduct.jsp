<%@ page language="java" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui" tagdir="/WEB-INF/tags" %>
<ui:html title="CShop - Товары">
  <nav aria-label="breadcrumb" class="padding-15">
    <ol class="breadcrumb">
      <li class="breadcrumb-item"><a href="<c:url value="/merchant/products.html"/>">Товары</a></li>
      <li class="breadcrumb-item active" aria-current="page">
        <c:if test="${empty product.id}">Новый товар</c:if>
        <c:if test="${not empty product.id}">${product.id}: ${product.name}</c:if>
      </li>
    </ol>
  </nav>

  <form:form method="POST" modelAttribute="product" enctype="multipart/form-data">
    <ui:input label="Наименование" id="name" type="text" value="${product.name}" required="true" autofocus="true"/>
    <ui:input label="Описание" id="description" type="text" value="${product.description}" required="true"/>
    <div class="form-group">
      <label for="productType">Тип продукта</label>
      <select class="form-control" id="productType" name="productType" required>
        <c:forEach var="productType" items="${productTypes}">
          <option <c:if test="${productType.id eq product.productType.id}">selected </c:if>value="${productType.id}">${productType.name}</option>
        </c:forEach>
      </select>
    </div>
    <div class="form-group">
      <label for="file">Фото</label>
      <input type="file" class="form-control-file" id="file" name="file">
    </div>
    <div>
      <c:if test="${not empty product.id}">
        <input type="hidden" name="id" value="${product.id}"/>
      </c:if>
      <a class="btn btn-danger" href="<c:url value="/merchant/products.html"/>"><ui:icon name="ban"/> Отменить</a>
      <button class="btn btn-info" type="submit"><ui:icon name="floppy-o"/> Сохранить</button>
    </div>
  </form:form>
</ui:html>
