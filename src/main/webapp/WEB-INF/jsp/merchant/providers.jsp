<%@ page language="java" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="ui" tagdir="/WEB-INF/tags" %>
<ui:html title="CShop - Поставщики">
  <nav aria-label="breadcrumb" class="padding-15">
    <ol class="breadcrumb">
      <li class="breadcrumb-item active" aria-current="page">Поставщики</li>
    </ol>
  </nav>

  <a class="btn btn-info" href="<c:url value="/merchant/editProvider.html"/>"><ui:icon name="plus"/> Добавить</a>

  <table class="table table-hover table-sm table-responsive-sm padding-15">
    <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Назваине</th>
      <th scope="col"><ui:icon name="pencil"/></th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="provider" items="${providers}">
      <tr>
        <th scope="row">${provider.id}</th>
        <td>${provider.name}</td>
        <td><a href="<c:url value="/merchant/editProvider.html?id=${provider.id}"/>"><ui:icon name="pencil"/></a></td>
      </tr>
    </c:forEach>
    </tbody>
  </table>
</ui:html>
