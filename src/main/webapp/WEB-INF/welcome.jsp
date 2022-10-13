<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page errorPage="../error.jsp" isErrorPage="false" %>

<t:fourthingsplus_template>
    <jsp:attribute name="header">
         Welcome to the logged in area
    </jsp:attribute>

    <jsp:body>

        <h3>Doing</h3>

        <form method="post">
        <table class="table table-striped">
            <thead>
            <tr>
                <th>Item</th>
                <th>Action</th>
            </tr>
            </thead>
            <c:forEach var="item" items="${requestScope.itemList}">
                <c:if test="${item.done == false}">
                    <tr>
                        <td>${item.name} (${item.created})</td>
                        <butten formaction="done" name="item_id" value="${item.id}">done</butten>
                        <td>Done</td>
                    </tr>
                </c:if>
            </c:forEach>
        </table>
        </form>

        <  <h3>Done - left in the dust</h3>
        <table class="table table-striped">
            <thead>
            <tr>
                <th>Item</th>
                <th>Action</th>
            </tr>
            </thead>
            <c:forEach var="item" items="${requestScope.itemList}">
                <c:if test="${item.done == true}">
                    <tr>
                        <td>${item.name} (${item.created})</td>
                        <butten formaction="done" name="item_id" value="${item.id}">Undo</butten>
                        <td>Undone</td>
                    </tr>
                </c:if>
            </c:forEach>
        </table>


    </jsp:body>
</t:fourthingsplus_template>