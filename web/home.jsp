<%-- 
    Document   : index
    Created on : 23/04/2019, 21:55:00
    Author     : a
--%>

<%@page import="br.com.fatecpg.quiz.Question"%>
<%@page import="br.com.fatecpg.quiz.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">


<!DOCTYPE html>
<%
    double grade = 0.0;
    if(request.getParameter("QuizTest")!=null){
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
        
        <link href="css/style.css" rel="stylesheet">
        
    </head>
    
    <body class="bodyhome"  background="img/avengers.jpg" >
        
        <div class="container" >
        
        <%
            String usuario = (String) session.getAttribute("usuario");
        %>
         
              <h1 class="fonte">QUIZ VINGADORES</h1><br/><br/><br/>
              
              
              <div class="row" >
              <div class="col-sm-12" >
                  
        
        <%if(request.getParameter("QuizTest")==null){%>
        
        <button class="btn btn-default btn-block btn-lg  button" ><a href="login.jsp">LOGIN</a> </button><br/>
        <button class="btn btn-default btn-block btn-lg  button" ><a href="recentes.jsp">TESTES RECENTES</a> </button><br/>
        <button class="btn btn-default btn-block btn-lg  button" ><a href="ranking.jsp">RANKING</a></button><br/>
        
        
        <%}else{%>
        
        <h3><%=usuario%>, sua nota foi <u><%=100*grade%>%</u></h3>
        
            <h3>Clique <a href="test.jsp">aqui</a> para realizar <u>um novo</u> teste</h3><br/>
            
            <h3>Clique <a href="deslogar.jsp">aqui</a> para <u>deslogar</u></h3><br/>
        
        <%}%>
        
        </div>
        </div>
        
         
        
        </div>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
