<%-- 
    Document   : test
    Created on : 23/04/2019, 21:58:51
    Author     : a
--%>

<%@page import="br.com.fatecpg.quiz.Db"%>
<%@page import="br.com.fatecpg.quiz.Question"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Teste - WebQuiz</title>
    </head>
    <body>
        <%
            String usuario = (String) session.getAttribute("usuario");
            if(usuario==null){
                response.sendRedirect("login.jsp");
            } else {
                out.print("<h3>Usuário logado: "+usuario+"<h3><br/>");
            }
        
        %>
        <h1>WebQuiz</h1>
        <h2>Teste Copa do Mundo de Futebol 2014</h2>
        <form action="test2.jsp">
            <%for(Question q: Db.getMathQuiz ()){%>
            <h3><%= q.getQuestion() %></h3>
            <%for (String alternative: q.getAlternatives()){%>
            <h4><input type="radio"
                       name="<%=q.getQuestion()%>"
                       value="<%=alternative%>"/>
                <%=alternative%>
            </h4>
            <%}%>
        <%}%>
        <input type="submit" name="MathTest" value="Enviar"/>
        </form>
    </body>
</html>
