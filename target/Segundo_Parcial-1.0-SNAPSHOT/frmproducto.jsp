<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <h2 style="display: block; text-align: center; margin-right: 200px;">
        <c:if test="${producto.id == 0}">
            Nuevo Registro
        </c:if>
        <c:if test="${producto.id != 0}">
            Editar Registro
        </c:if>
    </h2>
    <center><form action="Inicio" method="post" border="1px">
        <input type="hidden" name="id" value="${producto.id}">
        <table>
            <tr>
                <td>Despcripcion</td>
                <td><input type="text" name="descripcion" value="${producto.descripcion}"></td>
            </tr>   
            <tr>
                <td>Cantidad</td>
                <td><input type="number" step="any" name="cantidad" value="${producto.cantidad}"></td>
            </tr>   
            <tr>
                <td>Precio</td>
                <td><input type="number" step="any" name="precio" value="${producto.precio}"></td>
            </tr>   
            <tr>
                <td>Categoria</td>
                <td><input type="text" name="categoria" value="${producto.categoria}"></td>
            </tr>   
            <tr>
                <td></td>
                <td><input type="submit"></td>
            </tr>
        </table>
        </form> </center>
</body>
</html>
