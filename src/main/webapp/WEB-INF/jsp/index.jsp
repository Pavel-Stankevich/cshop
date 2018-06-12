<%@ page language="java" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" tagdir="/WEB-INF/tags" %>
<ui:html title="CShop">
  <div id="carousel" class="carousel slide carousel-fade" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#carousel" data-slide-to="0" class="active"></li>
      <li data-target="#carousel" data-slide-to="1"></li>
      <li data-target="#carousel" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="<c:url value="/images/intel.jpg"/>" alt="intel" style="max-width: 100%;">
        <div class="carousel-caption d-none d-md-block">
          <h5>Intel</h5>
        </div>
      </div>
      <div class="carousel-item">
        <img src="<c:url value="/images/amd.png"/>" alt="amd" style="max-width: 100%;">
        <div class="carousel-caption d-none d-md-block">
          <h5>AMD</h5>
        </div>
      </div>
      <div class="carousel-item">
        <img src="<c:url value="/images/nvidia.jpg"/>" alt="nvidia" style="max-width: 100%;">
        <div class="carousel-caption d-none d-md-block">
          <h5>Nvidia</h5>
        </div>
      </div>
    </div>
  </div>
  <div class="row padding-15">
    <c:forEach var="productType" items="${productTypes}">
      <div class="col-md-3 col-sm-4 col-6">
        <div class="card">
          <div class="img-field">
            <img class="card-img-top" src="<c:url value="/images/productTypePhoto.html?id=${productType.id}"/>" alt="Card image cap">
          </div>
          <div class="card-body">
            <h5 class="card-title">${productType.name}</h5>
            <a href="<c:url value="/products.html?productType=${productType.id}"/>" class="btn btn-info">Перейти</a>
          </div>
        </div>
      </div>
    </c:forEach>
  </div>
</ui:html>
