<%@ page language="java" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="ui" tagdir="/WEB-INF/tags" %>
<ui:html title="CShop - Поставки">
  <nav aria-label="breadcrumb" class="padding-15">
    <ol class="breadcrumb">
      <li class="breadcrumb-item active" aria-current="page">Продажи</li>
    </ol>
  </nav>

  <table class="table table-hover table-sm table-responsive-sm padding-15">
    <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Покупатель</th>
      <th scope="col">Дата продажи</th>
      <th scope="col">Продавец</th>
      <th scope="col">Сумма</th>
      <th scope="col">Статус</th>
      <th scope="col">Дата обновления</th>
      <th scope="col"><ui:icon name="address-card"/></th>
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
