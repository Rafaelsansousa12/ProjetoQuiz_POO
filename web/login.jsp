
<%@page import="br.com.fatecpg.quiz.Ranking"%>
<%@page import="br.com.fatecpg.quiz.Player"%>
<%@page import="java.util.Collections"%>
<%@page import="br.com.fatecpg.quiz.Score"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="br.com.fatecpg.quiz.Db"%>
<%@page import="br.com.fatecpg.quiz.Question"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<%
    DecimalFormat df = new DecimalFormat("#.##");
    DecimalFormat df2 = new DecimalFormat("0.00");
    double lastGrade = 100.0 * Db.getLastGrade();
    double averageGrade = 100.0 * Db.getGradeAverage();
%>

<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="css/style.css" rel="stylesheet">
       
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        
        <title>WebQuiz</title>
        
    </head>
    
    <body class="img-responsive fontetest"  background="img/avengers_recentes.jpg"> 
        
     
        
        <div class="fontetest">
            
            <div class="container div2">
                <h1>QUIZ VINGADORES</h1>
                

                <div class="col-md-2 ">
                    <div class="row">
                        <form action="test.jsp">
                            <label>Jogador : </label>                     
                            <input type="text" id="inputname" name="name" class="form-control input-md" placeholder="Digite o seu nome..." required />
                            <input class="btn btn-danger" type="submit" value="Começar Quiz">                    
                        </form>
                    </div>
                </div>
                
                <% 
                    String usuario = request.getParameter("name");
                    if(usuario != null && !usuario.isEmpty()){
                        session.setAttribute("name",usuario);
                        response.sendRedirect("test.jsp");
                    }
                %>
                               

                <div class="row">
                    <div class="col-md-6">
                        
                        <h3 >Última nota:</h3>
                        
                        <% if(lastGrade != 0 && lastGrade>0){ %>
                            <h4 class="ultimaNotaValor"><%= df.format(lastGrade)%>%</h4>
                        <% }%>
                        
                    </div>

                    <div class="col-md-6 div2">
                        <h3 >Média</h3>
                        <% if(averageGrade != 0 && averageGrade>0){ %>
                        <h4 ><%= df.format(averageGrade)%></h4>
                        <% }%>
                    </div>

                </div>

                <div class="table col-md-5 fontetest ">
                    <table class="table table-bordered table-hover fontetest ">
                        <thead >
                            <tr>
                                <th id="titleTable" colspan="2"><h3 class="fonte" >Ranking</h3></th>
                            </tr>                 
                            <tr>
                                <th class="fonte">Pontuação</th>
                                <th class="fonte">Jogador</th>
                            </tr>
                        </thead>           
                        <tbody class=" fontetest">
                            <%
                                        ArrayList<Score> ranking = Score.ranking;
                                        Collections.sort(ranking, new Ranking());
                                        for (Score score : ranking) {%>
                                        <tr>
                                        <td><%= df2.format(score.getScore())%></td>
                                        <td><%= score.getPlayer().getNome()%></td>
                                    </tr>
                            <%}%>
                        </tbody>
                    </table>
                </div>                                     
            </div>
        </div>

             <button class="btn btn-default btn-block btn-lg  button" ><a href="deslogar.jsp">SAIR</a> </button><br/>   
                
       <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
