<%-- 
    Document   : homelogin
    Created on : 26/04/2019, 14:53:59
    Author     : fernando.santos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<!DOCTYPE html>

<html>
    
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/style.css" rel="stylesheet">
        
        <title>Teste - WebQuiz</title>
        
    </head>
    
    <body class="img-responsive "  background="img/avengers_homeuser.jpg ">
        <h1 class="fonte">QUIZ VINGADORES</h1><br/>
        
        <div class="fontetest">
        <%
            String usuario = (String) session.getAttribute("usuario");
            if(usuario==null){
                response.sendRedirect("login.jsp");
            } else {
                out.print("<h3>Bem vindo, "+usuario+"! <br/>Sua média é de: "+"media"+"<h3><br/>10 últimos testes realizados ");
            }
        
        %>
        </div> 
        <br/><br/><br/><button class="btn btn-default btn-block btn-lg  button" ><a href="test.jsp">NOVO TESTE</a> </button>
        <button class="btn btn-default btn-block btn-lg  button" ><a href="deslogar.jsp">SAIR</a> </button><br/>
        
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
