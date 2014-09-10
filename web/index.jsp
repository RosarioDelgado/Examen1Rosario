<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : index
    Created on : 10-Sep-2014, 12:41:23
    Author     : Rosario
--%>
<sql:query var="nombre" dataSource="jdbc/TecPool-Rosario">
    SELECT clavecarrera FROM carrera
</sql:query>
    
<table border="1">
    <!-- column headers -->
    <tr>
        <c:forEach var="columnName" items="${nombre.columnNames}">
            <th><c:out value="${columnName}"/></th>
            </c:forEach>
    </tr>
    <!-- column data -->
    <c:forEach var="row" items="${nombre.rowsByIndex}">
        <tr>
            <c:forEach var="column" items="${row}">
                <td><c:out value="${column}"/></td>
            </c:forEach>
        </tr>
    </c:forEach>
</table>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>¡Examen 1!</title>
    </head>
    <body>
         <h1>Examen 1 Laboratorio de Desarrollo de Aplicaciones Web</h1>
         <p>Bienvenidos, mi nombre es Rosario Delgado Vaquera, con matrícula A00949796</p>
        <table border="0">
            <thead>
                <tr>
                    <th>Lista de Carreras!</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Selecciona una</td>
                </tr>
                <tr>
                    <td><form action="response.jsp">
                            <strong>Carrera</strong>
                            <select name="subject_id">
                                <c:forEach var="row" items="${subjects.rowsByIndex}">
                                <c:forEach var="column" items="${row}">
                                <option value="<c:out value="${column}"/>"><c:out value="${column}"/></option>
                                </c:forEach>
                                </c:forEach>
                            </select>
                            <input type="submit" value="submit" name="submit" />
                        </form></td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
