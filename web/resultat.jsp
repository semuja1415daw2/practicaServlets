<%-- 
    Document   : resultat
    Created on : 16/01/2015, 16:50:06
    Author     : sergi
    Description: Pàgina del joc
--%>

<%@page import="java.util.List"%>
<%@page import="PrUF1UF2.Jugador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Joc de parelles</title>
        <style type="text/css">
            #box1{
                width: 200px;
                height: 200px;
                float:left;
                border: 1px solid black ;
            }
            #box2{
                width: 200px;
                height: 200px;
                float:left;
                border: 1px solid black ;
            }
            .joc{
		width: 500px;
		margin: 0 auto;
            }
            body{
                font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
                color: #333;
                background-color: #F9F9F9;
            }
        </style>
    </head>
    <body>
        <div class="joc">
        <h1>Benvingut  ${nom}</h1>
        <h3>Troba les parelles</h3>
        <table>
        <%List<String> list = ((Jugador)session.getAttribute("nom")).getTaulaJoc();%>
        <%int i = 0;%>
         <%for(i = 0; i<list.size();i+=2){%>
         <td id="box1"><a href="joc?id=<%=list.get(i)%>"> <img src="imatges/<%=list.get(i)%>.jpg" width="200" height="200"></a></td>
         <td id="box2"> <a href="joc?id=<%=list.get(i+1)%>"><img src="imatges/<%=list.get(i+1)%>.jpg" width="200" height="200"></a></td>
         <%}%>
        </table>
        </div>
    </body>
</html>