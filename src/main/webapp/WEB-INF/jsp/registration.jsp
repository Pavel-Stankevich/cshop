<%@ page language="java" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui" tagdir="/WEB-INF/tags" %>
<ui:html title="index">
  <c:url var="registrationURL" value="/registration"/>
  <form:form class="row align-items-center registration-form" method="POST" action="${registrationURL}" modelAttribute="user">
    <div class="col-lg-4 offset-lg-4 col-md-6 offset-md-3 col-sm-8 offset-sm-2 col-10 offset-1 align-self-center">
      <div class="text-center">
        <h3 class="h3 font-weight-normal">CShop - Магазиин компьюиерной техники</h3>
        <h5 class="h5 font-weight-normal">Регистрация</h5>
      </div>

      <div class="form-group">
        <label for="email">Email</label>
        <input type="email" id="email" name="email" class="form-control" placeholder="Email" required autofocus>
      </div>

      <div class="form-group">
        <label for="password">Password</label>
        <input type="password" id="password" name="password" class="form-control" placeholder="Пароль" required autofocus>
      </div>

        <div class="form-group">
          <label for="surname">Фамилия</label>
          <input type="text" name="person.surname" id="surname" class="form-control" placeholder="Фамилия" required>
        </div>

        <div class="form-group">
          <label for="name">Имя</label>
          <input type="text" name="person.name" id="name" class="form-control" placeholder="Имя" required>
        </div>

        <div class="form-group">
          <label for="patronymic">Отчетсво</label>
          <input type="text" name="person.patronymic" id="patronymic" class="form-control" placeholder="Отчество">
        </div>

        <div class="form-group">
          <label for="birthday">Дата рождения</label>
          <input type="date" name="person.birthday" id="birthday" class="form-control" placeholder="Дата рождения" required>
        </div>

        <div class="form-group">
          <label for="phoneNumber">Номер телефона</label>
          <input type="tel" name="person.phoneNumber" id="phoneNumber" class="form-control phone" placeholder="Номер телефона" required>
        </div>
      <button class="btn btn-lg btn-info btn-block" type="submit"><ui:icon name="user-plus"/> Зарегистрироваться</button>
    </div>
  </form:form>
</ui:html>
