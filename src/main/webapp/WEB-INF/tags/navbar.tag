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
          <div class="dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              <ui:icon name="sign-in"/>
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
              <a class="dropdown-item" href="<c:url value="/login"/>">Войти</a>
              <a class="dropdown-item" href="<c:url value="/registration"/>">Регистрация</a>
            </div>
          </div>
        </sec:authorize>
      </form>
    </div>
  </div>
</nav>
