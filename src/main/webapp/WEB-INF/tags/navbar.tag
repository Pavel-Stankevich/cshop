<%@ tag language="java" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="ui" tagdir="/WEB-INF/tags" %>
<nav class="navbar navbar-expand-sm navbar-dark bg-info sticky-top">

  <div class="container">
    <a class="navbar-brand" href="<c:url value="/startPage.html"/>"><ui:icon name="desktop"/> CShop</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarToggler"
            aria-controls="navbarToggler" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarToggler">
      <ul class="navbar-nav mr-auto">
      </ul>
      <form class="form-inline navbar-nav">
        <sec:authorize access="isAnonymous()">
          <a href="<c:url value="/login"/>" class="nav-link">
            <ui:icon name="shopping-cart"/> <span class="badge badge-light">0</span>
          </a>
        </sec:authorize>
        <sec:authorize access="isAuthenticated()">
          <a href="<c:url value="/shoppingCart.html"/>" class="nav-link">
            <ui:icon name="shopping-cart"/> <span id="shopping-cart-badge" class="badge badge-light">0</span>
          </a>
        </sec:authorize>
        <div class="dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <sec:authorize access="isAnonymous()">
              <ui:icon name="sign-in"/>
            </sec:authorize>
            <sec:authorize access="isAuthenticated()">
              <sec:authentication property="principal.username"/>
            </sec:authorize>
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
            <sec:authorize access="isAnonymous()">
              <a class="dropdown-item" href="<c:url value="/login"/>">Войти</a>
              <a class="dropdown-item" href="<c:url value="/registration"/>">Регистрация</a>
            </sec:authorize>
            <sec:authorize access="hasAuthority('SELLER')">
              <a class="dropdown-item" href="<c:url value="/seller/sales.html"/>">Продажи</a>
            </sec:authorize>
            <sec:authorize access="hasAuthority('MERCHANT')">
              <a class="dropdown-item" href="<c:url value="/merchant/supplies.html"/>">Поставки</a>
              <a class="dropdown-item" href="<c:url value="/merchant/providers.html"/>">Поставщики</a>
              <a class="dropdown-item" href="<c:url value="/merchant/products.html"/>">Товары</a>
            </sec:authorize>
            <sec:authorize access="isAuthenticated()">
              <a class="dropdown-item" href="<c:url value="/shoppingCart.html"/>">Корзина</a>
              <a class="dropdown-item" href="<c:url value="/profile.html"/>">Профиль</a>
              <a class="dropdown-item" href="<c:url value="/logout"/>">Выйти</a>
            </sec:authorize>
          </div>
        </div>
      </form>
    </div>
  </div>
</nav>
