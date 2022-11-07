<%-- 
    Document   : principal
    Created on : 5 nov. 2022, 16:26:47
    Author     : kjlme
--%>
<%@page import="db.Connect"%>
<%
    Connect connection = new Connect();
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Página Principal - Administrador</title>
        <script src="https://cdn.tailwindcss.com"></script>
    </head>
    <nav id="header" class="w-full z-30 py-1 bg-gray-800">
        <div class="w-full flex items-center justify-between mt-0 px-6 py-2">
            <div class="hidden md:flex md:items-center md:w-auto w-full order-3 md:order-1" id="menu">
                <nav>
                    <ul class="md:flex items-center justify-between text-base text-white pt-4 md:pt-0">
                        <li><a class="inline-block no-underline hover:text-black font-semibold text-lg py-2 px-4 lg:-ml-2" href="principalAdmin.jsp">Home</a></li>
                        <li><a class="inline-block no-underline hover:text-black font-semibold text-lg py-2 px-4 lg:-ml-2" href="alquiler.jsp">Historial de Alquileres</a></li>
                        <li><a class="inline-block no-underline hover:text-black font-semibold text-lg py-2 px-4 lg:-ml-2" href="auto.jsp">Autos</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </nav>
    <body>
        <div class="flex justify-center items-center">
            <!--Tabla-->
            <div class="h-auto w-auto flex justify-center items-center border bg-transparent rounded-3xl p-10 mt-10 mb-10">
                <form method="post">  
                    <table class="table">
                        <thead class="bg-gray-800 text-white">
                            <tr>
                                <th class="px-3 py-2"></th>
                                <th class="px-3 py-2">FECHA INICIO</th>
                                <th class="px-3 py-2">FECHA FIN</th>
                                <th class="px-3 py-2">AUTO</th>
                                <th class="px-3 py-2"></th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                out.print(connection.getAlquiler());
                            %>
                        </tbody>
                    </table>
                    <div class="flex justify-end items-center">
                        <button type="submit" name="delete" class="bg-red-400 text-white font-bold px-3 py-2 rounded-xl mt-5">Eliminar</button>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
