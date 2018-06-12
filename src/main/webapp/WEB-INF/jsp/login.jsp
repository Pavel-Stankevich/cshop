<%@ page language="java" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui" tagdir="/WEB-INF/tags" %>
<ui:html title="index">
  <c:url var="loginURL" value="/login"/>
  <form:form class="row align-items-center login-form" method="POST" action="${loginURL}">
    <div class="col-lg-6 offset-lg-3 col-md-8 offset-md-2 col-sm-10 offset-sm-1 col-12 align-self-center">
      <div class="text-center">
        <h3 class="h3 font-weight-normal">CShop - Магазиин компьюиерной техники</h3>
        <h5 class="h5 font-weight-normal">Вход</h5>
      </div>

      <ui:input label="Email" id="email" type="email" required="true" autofocus="true" />
      <ui:input label="Пароль" id="password" type="password" required="true" />

      <button class="btn btn-lg btn-info btn-block" type="submit"><ui:icon name="sign-in"/> Войти</button>
    </div>
  </form:form>
</ui:html>
