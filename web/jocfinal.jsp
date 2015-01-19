<%-- 
    Document   : JocFinal
    Created on : 16/01/2015, 19:49:21
    Author     : sergi
    Description: Pàgina que t'informa que has finalitzat el joc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="PrUF1UF2.Jugador"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Joc Finalitzat</title>
        <style>
            body{
                width: 500px;
                margin: 0 auto;
                font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
                color: #333;
                background-color: #F9F9F9;
            }
            img{
                margin-left: -45px;
            }
        </style>
    </head>
    <body>
        <h1>Felicitats ${nom} has completat el joc!</h1>
        <h1>Has fet <%=session.getAttribute("puntjoc")%> punts</h1>
        <img src="imatges/game-over.png">
    </body>
</html>
