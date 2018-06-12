<%@ page language="java" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="ui" tagdir="/WEB-INF/tags" %>
<ui:html title="CShop - Товары: ${productType.name}">
  <nav aria-label="breadcrumb" class="padding-15">
    <ol class="breadcrumb">
      <li class="breadcrumb-item"><a href="<c:url value="/index.html"/>">Главная</a></li>
      <li class="breadcrumb-item active" aria-current="page">${productType.name}: страрица ${page}</li>
    </ol>
  </nav>

  <c:forEach var="product" items="${products.content}">
    <div class="row">
      <div class="col-12">
        <div class="card border-dark">
          <div class="card-header">${product.name}</div>
          <div class="card-body text-dark">
            <div class="row" style="padding-bottom: 20px">
              <div class="col-sm-4">
                <div class="product-img-field">
                  <img src="<c:url value="/images/productPhoto.html?id=${product.id}"/>"/>
                </div>
              </div>
              <div class="col-sm-8" style="display: grid;">
                <p class="card-text">${product.description}</p>
                <div style="align-items: flex-end!important; display: flex; justify-content: flex-end; margin: 0;">
                  <c:set var="suppliesSize" value="0"/>
                  <c:set var="minPrice" value="9999999999"/>
                  <c:set var="minPriceSupplyId" value="0"/>
                  <c:forEach var="supply" items="${product.supplies}">
                    <c:if test="${supply.balance gt 0}">
                      <c:set var="suppliesSize" value="${suppliesSize + 1}"/>
                      <c:if test="${supply.price le minPrice}">
                        <c:set var="minPrice" value="${supply.price}"/>
                        <c:set var="minPriceSupplyId" value="${supply.id}"/>
                      </c:if>
                    </c:if>
                  </c:forEach>
                  <c:if test="${suppliesSize le 0}">
                    <button class="btn btn-secondary" disabled>
                      Нет на складе
                    </button>
                  </c:if>
                  <c:if test="${suppliesSize ge 1}">
                    <sec:authorize access="isAnonymous()">
                      <a class="btn btn-info" href="<c:url value="/login"/>">
                        Купить за ${minPrice}&nbsp;<ui:icon name="cart-plus"/>
                      </a>
                    </sec:authorize>
                    <sec:authorize access="isAuthenticated()">
                      <button class="btn btn-info add-to-cart" href="<c:url value="/addToCart.html?id=${minPriceSupplyId}"/>">
                        Купить за ${minPrice}&nbsp;<ui:icon name="cart-plus"/>
                      </button>
                    </sec:authorize>
                  </c:if>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </c:forEach>
  <nav aria-label="pagination">
    <ul class="pagination">
      <c:forEach var="i" begin="${page - 3 le 1 ? 1 : page - 3}" end="${page + 3 gt products.totalPages ? products.totalPages : page + 3}">
        <li class="page-item<c:if test="${page eq i}"> active</c:if>"><a class="page-link" href="?page=${i}&productType=${productType.id}">${i}</a></li>
      </c:forEach>
      </ul>
  </nav>

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
          Товар закончился!
        </div>
      </div>
    </div>
  </div>
</ui:html>
