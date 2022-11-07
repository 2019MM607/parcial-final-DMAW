<%-- 
    Document   : index
    Created on : 2 nov. 2022, 18:20:14
    Author     : reyna
--%>

<%@page import="db.Connect"%>
<%!String message = "";%>
<%
    Connect connection = new Connect();
    if(request.getParameter("login") != null) {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        boolean isLogged = connection.checkLogin(email, password);
        if(isLogged) {
            String rol = connection.getRol(email);
            if(rol.equals("administrador")) {
                request.getRequestDispatcher("/screens/admin/principalAdmin.jsp").forward(request, response);
            } else {
                request.getRequestDispatcher("/screens/user/principalUser.jsp").forward(request, response);
            }
            
        } else {
            message = 
            "<div class='bg-red-100 border border-red-400 text-red-700 px-4 py-3 rounded'>" +
            "<strong class='font-bold'>Error!</strong>" +
            "<span class='ml-2'>Correo o Contraseña Incorrecta</span>" +
            "</div>" 
            ;
        }
        
    }

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="/screens/templates/header.jsp" flush="true" />
<script src="https://cdn.tailwindcss.com"></script>
<body class="antialiased bg-gradient-to-br from-green-100 to-white">
    <div class="container px-6 mx-auto">
      <div
        class="flex flex-col text-center md:text-left md:flex-row h-screen justify-evenly md:items-center"
      >
        <div class="flex flex-col w-full">
          <div>
            <svg
              class="w-20 h-20 mx-auto md:float-left fill-stroke text-gray-800"
              fill="none"
              stroke="currentColor"
              viewBox="0 0 24 24"
              xmlns="http://www.w3.org/2000/svg"
            >
              <path
                stroke-linecap="round"
                stroke-linejoin="round"
                stroke-width="2"
                d="M12 6V4m0 2a2 2 0 100 4m0-4a2 2 0 110 4m-6 8a2 2 0 100-4m0 4a2 2 0 110-4m0 4v2m0-6V4m6 6v10m6-2a2 2 0 100-4m0 4a2 2 0 110-4m0 4v2m0-6V4"
              ></path>
            </svg>
          </div>
          <h1 class="text-5xl text-gray-800 font-bold">Nombre de la app</h1>
          <p class="w-5/12 mx-auto md:mx-0 text-gray-500">
            Alquila autos desde donde quieras, cuando quieras
          </p>
        </div>
        <div class="w-full md:w-full lg:w-9/12 mx-auto md:mx-0">
          <div class="bg-white p-10 flex flex-col w-full shadow-xl rounded-xl">
            <h2 class="text-2xl font-bold text-gray-800 text-left mb-5">
              Inicio de Sesión
            </h2>
            <!-- Inicio del Form -->  
            <form action="" method="POST" class="w-full">
              <div id="input" class="flex flex-col w-full my-5">
                <label for="username" class="text-gray-500 mb-2"
                  >Correo</label
                >
                <input
                  type="email"
                  id="username"
                  name="email"
                  placeholder="Ingresa tu usuario"
                  class="appearance-none border-2 border-gray-100 rounded-lg px-4 py-3 placeholder-gray-300 focus:outline-none focus:ring-2 focus:ring-green-600 focus:shadow-lg"
                />
              </div>
              <div id="input" class="flex flex-col w-full my-5">
                <label for="password" class="text-gray-500 mb-2"
                  >Contraseña</label
                >
                <input
                  type="password"
                  id="password"
                  name="password"
                  placeholder="Ingresa tu contraseña"
                  class="appearance-none border-2 border-gray-100 rounded-lg px-4 py-3 placeholder-gray-300 focus:outline-none focus:ring-2 focus:ring-green-600 focus:shadow-lg"
                />
              </div>
              <div id="button" class="flex flex-col w-full my-5">
                <button
                  type="button"
                  class="w-full py-4 bg-green-600 rounded-lg text-green-100"
                >
                  <div class="flex flex-row items-center justify-center">
                    <div class="mr-2">
                    </div>
                    <input class="font-bold text-white rounded-xl" type="submit" name="login" value="Iniciar Sesión">
                  </div>
                </button>
              </div>
            </form>
            <!-- Fin del Form -->
            <div class="flex flex-col w-full my-5">
                <%
                   out.print(message);
                %>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
<jsp:include page="/screens/templates/footer.jsp" flush="true" />
