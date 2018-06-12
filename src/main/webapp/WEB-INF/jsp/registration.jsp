<%@ page language="java" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui" tagdir="/WEB-INF/tags" %>
<ui:html title="index">
  <c:url var="registrationURL" value="/registration"/>
  <form:form class="row align-items-center registration-form" method="POST" action="${registrationURL}" modelAttribute="user">
    <div class="col-lg-6 offset-lg-3 col-md-8 offset-md-2 col-sm-10 offset-sm-1 col-12 align-self-center">
      <div class="text-center">
        <h3 class="h3 font-weight-normal">CShop - Магазиин компьюиерной техники</h3>
        <h5 class="h5 font-weight-normal">Регистрация</h5>
      </div>


      <ui:input label="Email" id="email" type="email" required="true" autofocus="true" />
      <ui:input label="Пароль" id="password" type="password" required="true" />
      <ui:input label="Фамилия" id="person.surname" type="text" required="true" />
      <ui:input label="Имя" id="person.name" type="text" required="true" />
      <ui:input label="Отчетсво" id="person.patronymic" type="text" required="true" />
      <ui:input label="Дата рождения" id="person.birthday" type="date" required="true" />
      <ui:input label="Номер телефона" id="person.phoneNumber" type="tel" cssClass="tel" required="true" />

  </form:form>
</ui:html>
