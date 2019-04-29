<%-- 
    Document   : test
    Created on : 23/04/2019, 21:58:51
    Author     : a
--%>

<%@page import="br.com.fatecpg.quiz.Db"%>
<%@page import="br.com.fatecpg.quiz.Question"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<!DOCTYPE html>

<html>
    
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/style.css" rel="stylesheet">
        
        <title>Teste - WebQuiz</title>
        
    </head>
    
    <body background="img/avengers_test.jpg " class="fontetest">
        
        <%
            String usuario = (String) session.getAttribute("usuario");
            if(usuario==null){
                response.sendRedirect("login.jsp");
            } else {
                out.print("<h3>Usuário logado: "+usuario+"<h3><br/>");
            }
        
        %>
        <h1 class="fonte">WEBQUIZ</h1><br/>
        
        <h2>Teste de conhecimento Vingadores</h2><br/>
        
        <form action="test2.jsp">
            
            <%for(Question q: Db.getMathQuiz ()){%>
            
           <br/> <h3><%= q.getQuestion() %></h3><br/><br/>
            
            <%for (String alternative: q.getAlternatives()){%>
            
            <h4><input type="radio"
                       name="<%=q.getQuestion()%>"
                       value="<%=alternative%>"/>
                <%=alternative%>
            </h4><br/>
            
            <%}%>
        <%}%>
        
        <input type="submit" class="btn btn-danger" name="MathTest" value="Enviar"/>
        
        </form>
        
         <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
