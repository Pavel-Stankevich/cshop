<%@ page language="java" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui" tagdir="/WEB-INF/tags" %>
<ui:html title="CShop - Профиль">

  <div class="row padding-15">
    <div class="col12 col-lg-3">
      <form:form method="POST" modelAttribute="user">
        <ui:input label="Email" id="email" type="email" value="${user.email}" autofocus="true"/>
        <ui:input label="Пароль" id="password" type="password"/>
        <ui:input label="Фамилия" id="person.surname" type="text" value="${user.person.surname}"/>
        <ui:input label="Имя" id="person.name" type="text" value="${user.person.name}"/>
        <ui:input label="Отчество" id="person.patronymic" type="text" value="${user.person.patronymic}"/>
        <fmt:formatDate pattern="yyyy-MM-dd" value="${user.person.birthday}" var="birthday"/>
        <ui:input label="Дата рождения" id="person.birthday" type="date" value="${birthday}"/>
        <ui:input label="Номер телефона" id="person.phoneNumber" type="tel" value="${user.person.phoneNumber}" cssClass="tel"/>
        <button class="btn btn-info" type="submit"><ui:icon name="floppy-o"/> Сохранить</button>
      </form:form>
    </div>
    <div class="col12 col-lg-9">
      <table class="table table-hover table-sm table-responsive-sm padding-15">
        <thead>
        <tr>
          <th scope="col">ФИО</th>
          <th scope="col">Телефон</th>
          <th scope="col">Область</th>
          <th scope="col">Город</th>
          <th scope="col">Адрес</th>
          <th scope="col">Индекс</th>
          <th scope="col"><ui:icon name="pencil"/></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="address" items="${user.person.addresses}">
          <tr>
            <td scope="row">${address.fio}</td>
            <td scope="row">${address.phoneNumber}</td>
            <td scope="row">${address.region}</td>
            <td scope="row">${address.city}</td>
            <td scope="row">${address.adds}</td>
            <td scope="row">${address.postcode}</td>
            <td><a href="<c:url value="/editAddress.html?id=${address.id}"/>"><ui:icon name="pencil"/></a></td>
          </tr>
        </c:forEach>
        </tbody>
      </table>
      <div class="row">
        <a class="btn btn-info" href="<c:url value="/editAddress.html"/>"><ui:icon name="plus"/> Добавить</a>
      </div>
    </div>
  </div>

</ui:html>
