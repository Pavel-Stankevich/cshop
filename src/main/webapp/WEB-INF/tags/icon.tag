<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ tag language="java" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ attribute name="name" required="true" %>
<%@ attribute name="size" required="false" %>
<i class="fa fa-${name}${empty size ? '' : ' fa-'.concat(size)}" aria-hidden="true"></i>
