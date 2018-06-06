<%@ page language="java" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui" tagdir="/WEB-INF/tags" %>
<ui:html title="index">
  <c:url var="loginURL" value="/login"/>
  <form:form class="row align-items-center login-form" method="POST" action="${loginURL}">
    <div class="col-lg-4 offset-lg-4 col-md-6 offset-md-3 col-sm-8 offset-sm-2 col-10 offset-1 align-self-center">
      <div class="text-center">
        <h3 class="h3 font-weight-normal">CShop - Магазиин компьюиерной техники</h3>
        <h5 class="h5 font-weight-normal">Вход</h5>
      </div>

      <div class="form-group">
        <label for="inputId">Email</label>
        <input type="email" id="inputId" name="email" class="form-control" placeholder="Email" required autofocus>
      </div>

      <div class="form-group">
        <label for="inputPassword">Пароль</label>
        <input type="password" name="password" id="inputPassword" class="form-control" placeholder="Пароль" required>
      </div>

      <button class="btn btn-lg btn-info btn-block" type="submit"><ui:icon name="sign-in"/> Войти</button>
    </div>
  </form:form>
</ui:html>
