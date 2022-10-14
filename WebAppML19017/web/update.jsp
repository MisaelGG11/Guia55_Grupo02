<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.io.*,java.util.*,java.sql.*"%>
<%@page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@include file="conection.jsp"%>

<sql:query dataSource = "${fuenteDatos}" var = "result">
    SELECT * from libros where Id = ?;
    <sql:param value = "${param.id}"/>
</sql:query>

<c:forEach var = "row" items = "${result.rows}">
    <c:set var = "id" scope = "page" value = "${row.id}"/>
    <c:set var = "isbn" scope = "page" value = "${row.isbn}"/>
    <c:set var = "titulo" scope = "page" value = "${row.titulo}"/>
    <c:set var = "autor" scope = "page" value = "${row.autor}"/>
    <c:set var = "editorial" scope = "page" value = "${row.editorial}"/>
    <c:set var = "anio" scope = "page" value = "${row.anio}"/>
</c:forEach>

<sql:update dataSource = "${fuenteDatos}" var = "count">
    UPDATE libros SET isbn = ?, titulo = ?, autor = ?, editorial = ?, anio = ? WHERE Id = ?;
    <sql:param value = "${param.isbn}"/>
    <sql:param value = "${param.titulo}"/>
    <sql:param value = "${param.autor}"/>
    <sql:param value = "${param.editorial}"/>
    <sql:param value = "${param.anio}"/>
    <sql:param value = "${id}"/>
</sql:update>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar un Registro</title>
    </head>
    <body>
        <div>
            <h1>SE HA ACTUALIZADO UN REGISTRO</h1>
            <table border = "1" width = "100%">
                <tr>
                    <td>
                        Se ha actualizado el registro:</br>
                        ID: ${id}</br>
                        ISBN: ${isbn}</br>
                        Titulo: ${titulo}</br>
                        Autor: ${autor}</br>
                        Editorial: ${editorial}</br>
                        Año: ${anio}</br>
                    </td>
                </tr>
                <tr>
                    <td>
                        Con la siguiente información:</br>
                        ID: ${param.id}</br>
                        ISBN: ${param.isbn}</br>
                        Titulo: ${param.titulo}</br>
                        Autor: ${param.autor}</br>
                        Editorial: ${param.editorial}</br>
                        Año: ${param.anio}</br>
                    </td>
                </tr>
            </table>
            <h3 style="background-color:yellow;">***REGRESE A INDEX PARA REALIZAR OTRA OPERACION</h3>
            <a href="index.jsp" style="font-size:1cm;color:blue;">RETORNAR A INDEX</a>
        </div>
    </body>
</html>
