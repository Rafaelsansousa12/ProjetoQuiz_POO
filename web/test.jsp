
<%@page import="br.com.fatecpg.quiz.Score"%>
<%@page import="br.com.fatecpg.quiz.Player"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.fatecpg.quiz.Db"%>
<%@page import="br.com.fatecpg.quiz.Question"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<%

    try {
        if (request.getParameter("testeCiencia") != null) {
            //para o quiz
            Db.validateTest(new String[]{
                request.getParameter("0"),
                request.getParameter("1"),
                request.getParameter("2"),
                request.getParameter("3"),
                request.getParameter("4"),
                request.getParameter("5"),
                request.getParameter("6"),
                request.getParameter("7"),
                request.getParameter("8"),
                request.getParameter("9")
            });
            double scoreJogador = Db.getLastGrade() * 10;
            String nome = (String) session.getAttribute("usuario");

            //criando jogador
            Player p = new Player(nome);
            p.setName(nome);

            //criando pontuaçao
            Score score = new Score();
            score.setPlayer(p);
            score.setScore(scoreJogador);
            Score.ranking.add(score);

            response.sendRedirect("login.jsp");
        }
    } catch (Exception e) {
    }
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css">
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        
        <title>Teste</title>
        
    </head>
    
    <body >
        
        <div class="backgroundImage2">
            <br/>
            <div class="container-fluid">
                
                <form action="test.jsp" class="questions">
                    <%ArrayList<Question> test = Db.getMathQuiz(); %>
                    <% for(Question question : test){%>
                    <h2><%=question.getQuestion() %></h2>

                        <%for(String alternative: question.getAlternatives()) {%>
                           <div class="alternatives col-md-3">
                                <label class="radio">
                                    <%String i = String.valueOf(test.indexOf(question));%>
                                    <input type="radio" name="<%=i%>" value="<%=alternative%>" />
                                    <%=alternative%>
                                </label>         
                           </div>
                           <br/>
                        <%}%> 
                    <%}%> 
                    
                    <button class="submit btn btn-danger btn-lg"><a href="index.jsp">Voltar</a></button>
                    
                    <input class="submit btn btn-primary btn-lg" type="submit" name="testeCiencia" value="Enviar"/>               
               </form>
            </div>
           
        </div>
       
       
       <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
