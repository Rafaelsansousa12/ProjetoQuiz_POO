<%-- 
    Document   : login
    Created on : 25/04/2019, 13:45:00
    Author     : fernando.santos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
            response.sendRedirect("homelogin.jsp");
        }
        %>
    </body>
</html>
