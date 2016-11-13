<%-- 
    Document   : fruit
    Created on : Nov 13, 2016, 1:06:50 AM
    Author     : KN
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="/WEB-INF/header/header.jsp"/>
        <div class="container">
            <div class="row">
                <form action="SearchDisease" method="post" class="form-inline">
                    <div class="form-group">
                        <label for="name">Disease Name: </label>
                        <input type="text" class="form-control" id="name" name="searchText" placeholder="Search">
                    </div>
                    <button type="submit" class="btn btn-primary">Go</button>
                </form>
            </div><br><br>
            <div class="row">
                <c:forEach items="${diseases}" var="d">
                    <div class="col-md-4 text-center">
                        <img src='images/diseases/${d.diseId}.png' alt="pic" height="400">
                       <p> Name : ${d.diseName} </p>
                       <p> Type :  ${d.diseType} </p>
                       <p> Postion : ${d.positionInBody} </p>
                        <a href="ViewDiseasesDetail?id=${d.diseId}"><p class="btn btn-primary ">Detail</p></a>
                    </div>
                </c:forEach>
            </div>
        </div>
    </body>
</html>
