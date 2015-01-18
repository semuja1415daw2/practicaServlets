<%-- 
    Document   : registre
    Created on : 16/01/2015, 16:46:42
    Author     : sergi
    Description: Pagina de registre i login una vegada fet el primer registre incorrectament
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Autenticació</title>
        <style type="text/css">
            body{
                width: 500px;
                margin: 0 auto;
                font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
                color: #333;
                background-color: #F9F9F9;
            }
            .centre{
                margin: 0 auto;
                text-align: center;
            }
            .form-control {
                display: block;
                margin-top: 5px;
                width: 100%;
                height: 34px;
                padding: 6px 12px;
                font-size: 14px;
                line-height: 1.428571429;
                color: #555;
                vertical-align: middle;
                background-color: #fff;
                background-image: none;
                border: 1px solid #ccc;
                border-radius: 4px;
                -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,0.075);
                box-shadow: inset 0 1px 1px rgba(0,0,0,0.075);
                -webkit-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
                transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            }
            .btn{
                color: #fff;
                background-color: #428bca;
                border-color: #357ebd;
                display: inline-block;
                padding: 6px 12px;
                margin-bottom: 0;
                font-size: 14px;
                font-weight: normal;
                line-height: 1.428571429;
                text-align: center;
                white-space: nowrap;
                vertical-align: middle;
                cursor: pointer;
                background-image: none;
                border: 1px solid transparent;
                border-radius: 4px;
                -webkit-user-select: none;
                -moz-user-select: none;
                -ms-user-select: none;
                -o-user-select: none;
            }
            .btn:hover,
            .btn:focus {
                color: #333333;
                text-decoration: none;
            }
            .incorrecte{
                color:red;
            }
            
        </style>
    </head>
    <body>
        <h1 class="centre">Troba les parelles!</h1>
        <a class="centre"> El joc tracta d'un repte de trobar parelles de gures o
            imatges. El joc funciona per nivells, sent el primer nivell una matriu de 2x2 (i per tant 2 parelles de
            gures), fins 5x5 (5 parelles). </a><br>
        <a class="centre">El joc és multijugador. Cada jugador es registra amb un nom i contrasenya:</a>
        <div class="centre">
            <form method="POST" action="controlador">
                <input type="text" name="nom" class="form-control"/> <br/>
                <input type="password" name="password" class="form-control" /> <br/>
                <input type="submit" name="reg" value="Registre" class="btn"/>
                <input type="submit" name="log" value="Login" class="btn"/>
            </form>   
            <h1 class="incorrecte">Introdueix una adreça de correu i una contrasenya correctes</h1>
        </div>
    </body>
</html>
