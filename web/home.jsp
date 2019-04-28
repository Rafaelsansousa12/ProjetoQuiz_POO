<%-- 
    Document   : index
    Created on : 23/04/2019, 21:55:00
    Author     : a
--%>

<%@page import="br.com.fatecpg.quiz.Question"%>
<%@page import="br.com.fatecpg.quiz.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    double grade = 0.0;
    if(request.getParameter("MathTest")!=null){
        int correctAnswers = 0;
        for(Question q: Db.getMathQuiz()){
            String userAnswer = request.getParameter(q.getQuestion());
            if(userAnswer !=null){
                if(q.getAnswer().equals(userAnswer)){
                    correctAnswers++;
                }
            }
        }
        grade=(double)correctAnswers/ (double)Db.getMathQuiz().size();
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home - WebQuiz</title>
    </head>
    <body>
        <%
            String usuario = (String) session.getAttribute("usuario");
        %>
        <h1>webquiz</h1>
        <h2>Home</h2>
        <%if(request.getParameter("MathTest")==null){%>
            <h3>Clique <a href="login.jsp">aqui</a> para <u>logar</u></h3><br/>
            <h2>Ultimos 10 testes</h2><br/>
            <h2>Ranking</h2>
        <%}else{%>
        
        <h3><%=usuario%>, sua nota foi <u><%=100*grade%>%</u></h3>
            <h3>Clique <a href="test.jsp">aqui</a> para realizar <u>um novo</u> teste</h3><br/>
            <h3>Clique <a href="deslogar.jsp">aqui</a> para <u>deslogar</u></h3><br/>
        
        <%}%>
    </body>
</html>
