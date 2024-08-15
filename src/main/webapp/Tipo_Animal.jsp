<%-- 
    Document   : Tipo_Animal
    Created on : 12 ago. 2024, 22:53:20
    Author     : JOSUEDAVID
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="Model.Tipo_Animal" %>
<%@page import="Dao.Tipo_AnimalDao" %>
<%@page import="Conexion.Conexion" %>
<%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

        <style>
            .form-table {
                width: 60%; /* Ancho moderado */
                min-width: 300px; /* Ancho mínimo para pantallas pequeñas */
                max-width: 600px; /* Ancho máximo */
                margin: 50px auto; /* Centra la tabla vertical y horizontalmente */
                border: 1px solid #ddd;
                border-radius: 8px;
                box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
                padding: 20px; /* Añade espacio alrededor de la tabla */
                background-color: #f9f9f9; /* Color de fondo */
            }
            .form-table table {
                margin: 0; /* Quita el margen por defecto de la tabla */
            }
            .form-table th, .form-table td {
                text-align: center; /* Centra el texto dentro de las celdas */
                padding: 10px; /* Añade espacio en las celdas */
            }

        </style>
    </head>
    <body>
        <%!
            Tipo_AnimalDao tipo_AnimalDao = new Tipo_AnimalDao();
        %>
        <!-- TABLA -->
        <div class="form-table">
            <div class="d-grid gap-2">
                <button class="btn btn-primary" type="button" data-bs-toggle="modal" data-bs-target="#exampleModal">Agregar </button>
            </div>
            <div class="table-responsive">
                <table class="table table-bordered">
                    <thead class="table-dark">
                        <tr>
                            <th>ID</th>
                            <th>Tipo de Animal</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            ArrayList<Tipo_Animal> lista = tipo_AnimalDao.mostrarTipo_Animal();
                            for (Tipo_Animal elem : lista) {
                        %>
                        <tr>
                            <td class="codigo"><%=elem.getIdTipo_De_Animal()%></td>
                            <td class="descripcion"><%=elem.getDescripcion()%></td>
                            
                            <td colspan="2">
                                <button type="button" class="btn btn-outline-warning btnEditar" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                    <i class="bi bi-pencil-square"></i>
                                </button>
                                <!-- Boton Eliminar -->
                                <form action="${pageContext.servletContext.contextPath}/EliminarTipo_Animal" method="POST">
                                    <input type="hidden" name="idTipo_De_Animal" value="<%=elem.getIdTipo_De_Animal()%>">
                                    <button type="submit" class="btn btn-danger" onclick="return confirm('¿Estás seguro de que deseas Eliminar')"><i class="bi bi-trash3-fill"></i></button>
                                </form>
                            </td>
                        </tr>
                        <%
                            }
                        %>
                    </tbody>
                </table>
            </div>
            <!-- Modal -->
            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog  ">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h1 class="modal-title fs-5" id="exampleModalLabel">Nuevo Tipo de Animal</h1>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <form action="${pageContext.servletContext.contextPath}/Tipo_AnimalMetodos" method="POST" id="form">
                            <div class="modal-body"> 
                                <table class="table">
                                    <tr>
                                        <td>ID</td>
                                        <td><input type="text" id="txtID" name="txtID" class="form-control" value="0" readonly="true"></td>
                                    </tr>
                                    <tr>
                                        <td>Nuevo Tipo de Animal</td>
                                        <td><input type="text" id="txtDescripcion" name="txtDescripcion" class="form-control"></td>
                                    </tr>                                                  
                                </table>
                            </div>                                              
                            <div class="modal-footer">                                                    
                                <div class="col-12">
                                    <button type="submit" name="btnGuardar" class="btn btn-success">Guardar</button>
                                    <button type="button" class="btn btn-info" data-bs-dismiss="modal">Cancelar</button>
                                </div>
                            </div>                                                                                                 
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!<!-- Final de la tabla -->
        <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <%
            if (request.getParameter("mensaje") != null) {
        %>
        <script>alert('<%=request.getAttribute("mensaje") %>)</script>
        <%
            }
        %>
        <script src="${pageContext.servletContext.contextPath}/js/Tipo_animal.jsp"></script>
    </body>
</html>
