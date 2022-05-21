<%@ page import="Clases.Pelicula" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: maria
  Date: 8/5/2022
  Time: 23:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Tarea</title>
</head>
<body>
<%
    List<Pelicula> retunCat2 =  (List<Pelicula>)request.getAttribute("LisPel");
%>

<div style="overflow-y: auto; margin-left: auto; margin-right: auto; margin-top: 30px; display:block; width: 1300px; height: 540px; padding: 10px">
    <%
        if(retunCat2!=null){
            for(Pelicula p: retunCat2)
            {
                %>
                <h4>ID: <%=p.getId()%></h4>
                <h4>Nombre: <%=p.getNombre()%></h4>
                <h4>Descripcion: <%=p.getDescripcion()%></h4>
                <h4>Lanzamiento: <%=p.getLanzamiento()%></h4>
                <br>
                <%
            }
        }
        else{%>
        <h1>
            No hay datos
        </h1>
            <%
        }

    %>
</div>
</body>
</html>
