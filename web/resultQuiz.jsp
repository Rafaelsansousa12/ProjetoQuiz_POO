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
        <link href="css/style.css" rel="stylesheet">
        
        <title>Usuário</title>
        
    </head>
    
    <body class="img-responsive "  background="img/avengers_resultquiz.jpg ">
        
        <%
            String usuario = (String) session.getAttribute("usuario");
        %>
        
        <h1 class="fonte"  > QUIZ VINGADORES</h1><br/><br/>
        
        <div class="fontetest">
            
        <h2>Resultado:</h2><br/>      
        
        <%if(request.getParameter("MathTest")==null){%>
            <h3>Clique <a href="login.jsp">aqui</a> para <u>logar</u></h3><br/>
            
            <h2>Ultimos 10 testes</h2><br/>
            
            <h2>Ranking</h2>
            
        <%}else{%>
        
        <h3><%=usuario%>, sua nota foi <u><%=100*grade%>%</u></h3>
        
        </div>
        
             <br/><br/><br/><button class="btn btn-default btn-block btn-lg  button" ><a href="test.jsp">NOVO TESTE</a> </button>          
            <button class="btn btn-default btn-block btn-lg  button" ><a href="deslogar.jsp">SAIR</a> </button><br/>
        
        <%}%>
        
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
