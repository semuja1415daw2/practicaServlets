<%-- 
    Document   : registre
    Created on : 16/01/2015, 16:46:42
    Author     : sergi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Autenticació</title>
    </head>
    <body style="background-color: #FCF9F9">
        <h1>Troba les parelles!</h1>
         <a> El joc tracta d'un repte de trobar parelles de gures o
        imatges. El joc funciona per nivells, sent el primer nivell una matriu de 2x2 (i per tant 2 parelles de
        gures), fins 5x5 (5 parelles). </a><br>
        <a>El joc és multijugador. Cada jugador es registra amb un nom i contrasenya:</a>
        <form method="POST" action="controlador">
        <input type="text" name="nom" /> <br/>
        <input type="password" name="password" /> <br/>
        <input type="submit" name="reg" value="registre" />
        <input type="submit" name="log" value="login" />
        </form>        
    </body>
</html>
