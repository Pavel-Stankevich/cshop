<%@ page language="java" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui" tagdir="/WEB-INF/tags" %>
<ui:html title="CShop - Корзина">
  <nav aria-label="breadcrumb" class="padding-15">
    <ol class="breadcrumb">
      <li class="breadcrumb-item"><a href="<c:url value="/index.html"/>">Главная</a></li>
      <li class="breadcrumb-item active" aria-current="page">Корзина</li>
    </ol>
  </nav>

  <c:set var="saleSum" value="0"/>

  <c:forEach var="saleProduct" items="${products}">
    <c:set var="saleSum" value="${saleSum + (saleProduct.count * saleProduct.supply.price)}"/>
    <div class="row">
      <div class="col-12">
        <div class="card border-dark">
          <div class="card-header">${saleProduct.supply.product.name}</div>
          <div class="card-body text-dark">
            <div class="row" style="padding-bottom: 20px">
              <div class="col-sm-4">
                <div class="product-img-field">
                  <img src="<c:url value="/images/productPhoto.html?id=${saleProduct.supply.product.id}"/>"/>
                </div>
              </div>
              <div class="col-sm-8" style="display: grid;">
                <p class="card-text">${saleProduct.supply.product.description}<br>(На складе: ${saleProduct.supply.balance})<br>Стоимость: ${saleProduct.supply.price}</p>
                <div style="align-items: flex-end!important; display: flex; justify-content: flex-end; margin: 0;">
                  <ui:input label="Кол-во" id="count" type="text" cssClass="count supply-product-count" value="${saleProduct.count}" suppplyId="${saleProduct.supply.id}"/>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </c:forEach>

  <c:if test="${empty addresses}">
    <div class="alert alert-secondary" role="alert">
      Необходимо добавить хотя бы одиин адрес доставки!
    </div>
  </c:if>
  <c:if test="${not empty addresses}">
    <c:url var="buy" value="/buy.html"/>
    <form:form method="post" action="${buy}" id="buyForm">
      <div class="form-group">
        <label for="addresses">Адреса доставки</label>
        <select class="form-control" id="addresses" name="addressId">
          <c:forEach var="address" items="${addresses}">
            <option value="${address.id}">${address.fio}, ${address.city}, ${address.adds}, ${address.phoneNumber}</option>
          </c:forEach>
        </select>
      </div>
      <button type="button" id="buy" class="btn btn-info">${saleSum}&nbsp;<ui:icon name="money"/>&nbsp;Купить</button>
    </form:form>
  </c:if>

  <div class="modal fade" id="errorModal" tabindex="-1" role="dialog" aria-labelledby="errorModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-sm" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="errorModalLabel">Произошла ошибка</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          Товар закончился или указанное кол-во больше остатка на складе!
        </div>
      </div>
    </div>
  </div>

  <div class="modal fade" id="messageModal" tabindex="-1" role="dialog" aria-labelledby="messageModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-sm" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="messageModalLabel"></h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body" id="messageModalContent">
        </div>
      </div>
    </div>
  </div>
</ui:html>
