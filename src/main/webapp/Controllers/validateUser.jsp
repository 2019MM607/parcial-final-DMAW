<%-- 
    Document   : validateUser
    Created on : Nov 7, 2022, 12:06:15 AM
    Author     : deuseli
--%>

<%@page import="db.Connect"%>
<% 
    try{
        Connect connection = new Connect();
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        boolean isLogged = connection.checkLogin(email, password);
        if(isLogged) {
//            request.getRequestDispatcher("../screens/admin/principal.jsp").forward(request, response);
            String redirectURL = "../screens/admin/principal.jsp";
            response.sendRedirect(redirectURL);
        } else {
//            request.setAttribute("error", "CREDENCIALES INVÁLIDAS");
//            RequestDispatcher rd = request.getRequestDispatcher("../index.jsp");
//            rd.include(request, response);
            String redirectURL = "../index.jsp?error=DATOS INCORRECTOS";
            response.sendRedirect(redirectURL);
        }
    } catch(Exception e) {
        
    }
%>
