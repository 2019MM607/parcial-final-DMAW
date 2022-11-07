<%-- 
    Document   : auto
    Created on : 6 nov. 2022, 20:49:41
    Author     : kjlme
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Autos - Administrador</title>
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
        <div class="flex">
            <div class="flex flex-row">
                <!-- Formulario -->
                <div class="h-auto w-auto flex justify-center items-center border bg-transparent p-10 rounded-3xl mt-10 ml-10">
                        <!--Inicio del Bloque del Formulario-->
                        <form method="POST">
                            <!-- Marca -->
                            <div class="font-bold text-lg mr-3">
                                Marca
                            </div>
                            <input class="w-full rounded-md bg-slate-100 focus:outline-none px-3 py-2 mt-2 mb-3" type="text" name="marca">
                            <!-- Modelo -->
                            <div class="font-bold text-lg mr-3">
                                Modelo
                            </div>
                            <input class="w-full rounded-md bg-slate-100 focus:outline-none px-3 py-2 mt-2 mb-3" type="text" name="modelo">
                            <!-- Color -->
                            <div class="font-bold text-lg mr-3">
                                Color
                            </div>
                            <input class="w-full rounded-md bg-slate-100 focus:outline-none px-3 py-2 mt-2 mb-3" type="text" name="color">
                            <!-- Placa -->
                            <div class="font-bold text-lg mr-3">
                                Placa
                            </div>
                            <input class="w-full rounded-md bg-slate-100 focus:outline-none px-3 py-2 mt-2 mb-3" type="text" name="placa">
                            <!-- Imagen -->
                            <div class="font-bold text-lg mr-3">
                                Imágen del Auto
                            </div>
                            <input class="w-full rounded-md bg-slate-100 focus:outline-none py-2 mt-2 mb-3" type="text" name="img">
                            <!-- Stock -->
                            <div class="font-bold text-lg mr-3">
                                Cantidad en Stock
                            </div>
                            <input class="w-full rounded-md bg-slate-100 focus:outline-none px-3 py-2 mt-2 mb-10" type="number" min="0" name="stock">
                            <!-- Botón -->
                            <div class="flex justify-center items-center">
                                <input class="w-full px-3 py-2 bg-blue-500 font-bold text-white rounded-xl" type="submit" name="add_auto" value="Agregar Auto">
                            </div>
                        </form>
                        <!-- Fin del Bloque del Formulario -->
                </div>
                <!-- Tabla -->
                <div class="h-auto w-72 flex flex-row justify-center items-center border bg-transparent rounded-3xl p-10 mt-10 ml-10">
                    Tabla
                </div>
            </div>
        </div>
    </body>
</html>
