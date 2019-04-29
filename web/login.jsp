<%-- 
    Document   : login
    Created on : 25/04/2019, 13:45:00
    Author     : fernando.santos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<!DOCTYPE html>

<html>
    
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/style.css" rel="stylesheet">
        
        <title>Login | Teste - WebQuiz</title>
        
    </head>
    
    <body>
        
        <form action="login.jsp" method="post">
            
            Usuário: <br/><input type="text" name="usuario" /><br/>
            
            <input type="submit" value="Logar"/>
            
        </form>
        
        <%
        String usuario = request.getParameter("usuario");
        if (usuario!=null && !usuario.isEmpty()){
            session.setAttribute("usuario", usuario);
            response.sendRedirect("homeUser.jsp");
        }
        %>
         <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
