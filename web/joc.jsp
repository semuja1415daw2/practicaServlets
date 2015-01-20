<%-- 
    Document   : resultat
    Created on : 16/01/2015, 16:50:06
    Author     : sergi
    Description: Pàgina del joc complementaria per a la lògica del joc
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
            .teamlogo{
                padding-left:5%;
            }
            .flip-container{
                -webkit-perspective:1000;
                -moz-perspective:1000;
                -ms-perspective:1000;
                -o-perspective:1000;
                perspective:1000;
            }
            .flipped {
                -webkit-transform:rotateY(180deg);
                -moz-transform:rotateY(180deg);
                -ms-transform:rotateY(180deg);
                -o-transform:rotateY(180deg);
                transform:rotateY(180deg);
            }
            .flip-container, .front, .back{
                width:50px;
                height:50px;
            }
            .flipper {
                -webkit-transition:0.6s;
                -moz-transition:0.6s;
                -o-transition:0.6s;
                transition:0.6s;
                -webkit-transform-style:preserve-3d;
                -moz-transform-style:preserve-3d;
                -ms-transform-style:preserve-3d;
                -o-transform-style:preserve-3d;
                transform-style:preserve-3d;
                position:relative;
            }
            .front, .back{
                -webkit-backface-visibility:hidden;
                -moz-backface-visibility:hidden;
                -ms-backface-visibility:hidden;
                -o-backface-visibility:hidden;
                backface-visibility:hidden;
                position:absolute;
                top:0;
                left:0;
            }
            .front{
                z-index:2;
            }
            .back{
                -webkit-transform:rotateY(180deg);
                -moz-transform:rotateY(180deg);
                -ms-transform:rotateY(180deg);
                -o-transform:rotateY(180deg);
                transform:rotateY(180deg);
            }
        </style>
    </head>
    <body>
        <div class="joc">
            <h1>Continua així!</h1>
        <h3>Troba les parelles</h3>
        <table>
        <%List<String> list = ((Jugador)session.getAttribute("nom")).getTaulaJoc();%>
        <%int i = 0;%>
         <%for(i = 0; i<list.size();i+=2){%>
         <td id="box1">
                        <div class="flip-container">
                            <div class="flipper" onclick="this.classList.toggle('flipped')">
                                <div class="front">
                                    <img src="imatges/negre.png" width="200px" height="200px">
                                </div>
                                <div class="back">
                                    <a href="joc?id=<%=list.get(i)%>"><img src="imatges/<%=list.get(i)%>.jpg" width="200" height="200" ></a>

                                </div>
                            </div>
                        </div>
                </td>
         <td id="box2"> 
             <div class="flip-container">
                            <div class="flipper" onclick="this.classList.toggle('flipped')">
                                <div class="front">
                                    <img src="imatges/negre.png" width="200px" height="200px">
                                </div>
                                <div class="back">
                                    <a href="joc?id=<%=list.get(i+1)%>"><img src="imatges/<%=list.get(i+1)%>.jpg" width="200" height="200" ></a>

                                </div>
                            </div>
                        </div>
         </td>
         <%}%>
        </table>
         <h1>Tens <%=session.getAttribute("puntjoc")%> punts</h1>
        </div>
    </body>
</html>