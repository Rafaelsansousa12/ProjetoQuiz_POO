<%-- 
    Document   : homelogin
    Created on : 26/04/2019, 14:53:59
    Author     : fernando.santos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Teste - WebQuiz</title>
    </head>
    <body>
        <h2>WebQuiz - Teste Copa do Mundo de Futebol 2014</h2><br/>
        <%
            String usuario = (String) session.getAttribute("usuario");
            if(usuario==null){
                response.sendRedirect("login.jsp");
            } else {
                out.print("<h3>Bem vindo, "+usuario+"! <br/>Sua média é de: "+"media"+"<h3><br/>10 últimos testes realizados ");
            }
        
        %>
        
        <h3>Clique <a href="test.jsp">aqui</a> para realizar o teste</h3><br/>
        <h3>Clique <a href="deslogar.jsp">aqui</a> para deslogar</h3><br/>
    </body>
</html>
