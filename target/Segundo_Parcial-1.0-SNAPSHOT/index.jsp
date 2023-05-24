<%@page import="java.util.List"%>
<%@page import="com.emergentes.modelo.Producto"%>
<%
    List<Producto> avisos = (List<Producto>) request.getAttribute("producto");

%><%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <table border="1">
            <div style="text-align: left; border: 3px solid black; padding: 10px; margin: 0 auto; width: 500px; height: 160px;">
                <center><h2>SEGUNDO PARCIAL TEM-742</h2></center> 
                <h3>Nombre : Limber Cumara Mamani </h3>
                <h3>Carnet : 9141399 </h3> 
            </div>
        </table>
    </center>
    <center><h1>Gestión de Productos</h1></center>
    <a href="Inicio?action=add" style="display: block; text-align: center; margin-right: 400px;">Nuevo Producto</a>
    <br>
    <center><table border="3" >
            <tr>
                <th>ID</th>
                <th>DESCRIPCION</th>
                <th>CANTIDAD</th>
                <th>PRECIO</th>
                <th>CATEGORIA</th>
                <th></th>
                <th></th>
            </tr>
            <c:forEach  var="item" items="${producto}">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.descripcion}</td>
                    <td>${item.cantidad}</td>
                    <td>${item.precio}</td>
                    <td>${item.categoria}</td>
                    <td><a href="Inicio?action=edit&id=${item.id}">Editar</a></td>
                    <td><a href="Inicio?action=delete&id=${item.id}">Eliminar</a></td>

                </tr>
            </c:forEach>

        </table></center>
</body>
</html>
