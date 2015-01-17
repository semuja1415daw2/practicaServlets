<%-- 
    Document   : resultat
    Created on : 16/01/2015, 16:50:06
    Author     : sergi
--%>

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
                background-color: coral;
                float:left;
                border: 1px solid black ;
            }
            #box2{
                width: 200px;
                height: 200px;
                background-color: blue;
                float:left;
                border: 1px solid black ;
            }
            #box3{
                width: 200px;
                height: 200px;
                background-color: red;
                float:left;
                border: 1px solid black ;
            }
            #box4{
                width: 200px;
                height: 200px;
                background-color: green;
                float:left;
                border: 1px solid black ;
            }
            .sota{
                float: left;
                margin-top: 202px;
                margin-left: -404px;
            }
            .joc{
                width: 500px;
                margin: 0 auto;
            }
        </style>
    </head>
    <body>
        <h1>Benvingut  ${nom}</h1>
        <h3>Troba les parelles</h3>
        <c:out value="${test}" />
        <table>
        <c:forEach begin="0" end= "4" step="1" varStatus="loopCounter"
        value="${TaulaJoc}" var="taula">
            <tr class="joc">
		<td id="box1"><c:out value="${taula}" /></td>
		<td id="box2"><c:out value="${taula}" /></td>
	</tr>
        </c:forEach>
        </table>     
    </body>
</html>