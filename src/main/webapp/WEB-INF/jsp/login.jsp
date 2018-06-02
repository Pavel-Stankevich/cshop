<%@ page language="java" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" tagdir="/WEB-INF/tags" %>
<ui:html title="index">
  <form class="row align-items-center">
    <div class="col-lg-4 offset-lg-4 col-md-6 offset-md-3 col-sm-8 offset-sm-2 col-10 offset-1 align-self-center">
      <div class="text-center mb-4">
        <h1 class="h3 mb-3 font-weight-normal">LaCiT - Time manager</h1>
      </div>

      <div class="form-group">
        <label for="inputId">Табельный номер</label>
        <input type="text" id="inputId" class="form-control" placeholder="Табельный номер" required autofocus>
      </div>

      <div class="form-group">
        <label for="inputPassword">Пароль</label>
        <input type="password" id="inputPassword" class="form-control" placeholder="Пароль" required>
      </div>

      <button class="btn btn-lg btn-info btn-block" type="submit">Войти</button>
    </div>
  </form>
</ui:html>
