<%@ page language="java" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="ui" tagdir="/WEB-INF/tags" %>
<ui:html title="CShop - Поставки">
  <nav aria-label="breadcrumb" class="padding-15">
    <ol class="breadcrumb">
      <li class="breadcrumb-item active" aria-current="page">Поставки</li>
    </ol>
  </nav>

  <a class="btn btn-info" href="<c:url value="/merchant/editSupply.html"/>"><ui:icon name="plus"/> Добавить</a>

  <table class="table table-hover table-sm table-responsive-sm padding-15">
    <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Поставщик</th>
      <th scope="col">Тип продукта</th>
      <th scope="col">Наименование продукта</th>
      <th scope="col">Цена поставки</th>
      <th scope="col">Цена продажи</th>
      <th scope="col">Кол-во</th>
      <th scope="col">Остаток</th>
      <th scope="col"><ui:icon name="pencil"/></th>
      <th scope="col"><ui:icon name="arrow-circle-right"/></th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="supply" items="${supplies}">
      <tr>
        <th scope="row">${supply.id}</th>
        <td>${supply.provider.name}</td>
        <td>${supply.product.productType.name}</td>
        <td>${supply.product.name}</td>
        <td>${supply.supplyPrice}</td>
        <td>${supply.price}</td>
        <td>${supply.count}</td>
        <td>${supply.balance}</td>
        <td>
          <a <c:if test="${!supply.close}">href="<c:url value="/merchant/editSupply.html?id=${supply.id}"/>"</c:if>><ui:icon name="pencil"/></a>
        </td>
        <th scope="col"><a <c:if test="${!supply.close}">href="<c:url value="/merchant/closeSupply.html?id=${supply.id}"/>"</c:if>><ui:icon name="arrow-circle-right"/></a></th>
      </tr>
    </c:forEach>
    </tbody>
  </table>
</ui:html>
