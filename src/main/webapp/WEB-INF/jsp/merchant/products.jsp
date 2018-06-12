<%@ page language="java" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" tagdir="/WEB-INF/tags" %>
<ui:html title="CShop - Товары">
  <nav aria-label="breadcrumb" class="padding-15">
    <ol class="breadcrumb">
      <li class="breadcrumb-item active" aria-current="page">Товары</li>
    </ol>
  </nav>
  <a class="btn btn-info" href="<c:url value="/merchant/editProduct.html"/>"><ui:icon name="plus"/> Добавить</a>

  <table class="table table-hover table-sm table-responsive-sm padding-15">
  <thead>
  <tr>
  <th scope="col">#</th>
    <th scope="col">Фото</th>
    <th scope="col">Тип продукта</th>
    <th scope="col">Наименование</th>
    <th scope="col">Описание</th>
      <th scope="col"><ui:icon name="pencil"/></th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="product" items="${products}">
      <tr>
        <th scope="row">${product.id}</th>
        <th width="30%">
          <img src="<c:url value="/images/productPhoto.html?id=${product.id}"/>" class="img-fluid">
        </th>
        <td>${product.productType.name}</td>
        <td>${product.name}</td>
        <td>${product.description}</td>
        <td><a href="<c:url value="/merchant/editProduct.html?id=${product.id}"/>"><ui:icon name="pencil"/></a></td>
      </tr>
    </c:forEach>
    </tbody>
  </table>
</ui:html>
