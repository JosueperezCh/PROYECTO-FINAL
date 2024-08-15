
<%-- 
    Document   : Clientes
    Created on : 3 jul. 2024, 22:22:56
    Author     : JOSUEDAVID
--%>


<%@page import="java.util.List"%>
<%@page import="Model.Clientes"%>
<%@page import="Dao.ClientesDao"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Sistema Veterinaria</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
        <link href="css/stylesp.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.12.3/dist/sweetalert2.min.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/2.1.2/css/dataTables.dataTables.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"/>
    </head>
    <body>
        <%!
            
            ClientesDao clientesDao = new ClientesDao();
        %>
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="index.html">VT Colitas Felices</a>
            <!-- Sidebar Toggle-->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
                <div class="input-group">
                    <input class="form-control" type="text" placeholder="Search for..." aria-label="Search for..." aria-describedby="btnNavbarSearch" />
                    <button class="btn btn-primary" id="btnNavbarSearch" type="button"><i class="fas fa-search"></i></button>
                </div>
            </form>
            <!-- Barra Usuario-->
            <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="index.jsp">Cerrar Sesion</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">

                            <div class="sb-sidenav-menu-heading">Principal</div>
                            <a class="nav-link" href="menu.jsp">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Menu Principal
                            </a>

                            <div class="sb-sidenav-menu-heading">Gestiones</div>
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                Clientes
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>

                            <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="Clientes.jsp">Clientes</a>
                                    <a class="nav-link" href="Mascotas.jsp">Mascotas</a>
                                </nav>
                            </div>
                            <div class="sb-sidenav-menu-heading">Gestiones</div>
                            <a class="nav-link" href="Usuarios.jsp">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                Usuarios
                            </a>
                        </div>
                    </div>
                </nav>
            </div>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">                     
                        <h1 class="mt-4">Gestion Clientes</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active"></li>
                        </ol>
                        <div class="row">
                            <div class="col-xl-3 col-md-6">
                            </div>
                        </div>
                        <div class="card">
                            <div class="row">
                                <div class="col-8"><h3></h3></div>
                                <div class="col-4 aling-self-center">
                                    <div class="d-grid gap-2">
                                        <button type="button" id="btnAdd" class="btn btn-outline-success" data-bs-toggle="modal" data-bs-target="#exampleModal">Agregar</button>
                                    </div>
                                </div>                                   
                            </div>
                            <div class="table-responsive">
                                <div class="row">
                                    <div class="col-12">
                                        <table class="table table-hover">
                                            <thead>
                                                    <th>ID</th>
                                                    <th>Nombre</th>
                                                    <th>Telefono</th>
                                                    <th>Correo Electronico</th>
                                                    <th>Direccion</th>
                                                    <th>DNI</th>
                                                    <th>Acciones</th>
                                            </thead>
                                            <tbody>
                                                <%
                                                    ArrayList<Clientes> lista = clientesDao.mostrarClientes();
                                                    for (Clientes elem : lista) {

                                                %>
                                                <tr>
                                                    <td class="id"><%=elem.getIdClientes()%></td>
                                                    <td class="nombres"><%=elem.getNombres()%></td>
                                                    <td class="telefono"><%=elem.getTelefono()%></td>
                                                    <td class="correo"><%=elem.getCorreo_Electronico()%></td>
                                                    <td class="direccion"><%=elem.getDireccion()%></td>
                                                    <td class="dni"><%=elem.getDNI()%></td>
                                                    <td>
                                                        <button type="button" class="btn btn-outline-warning btnEditar" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="bi bi-pencil-square"></i></button>
                                                    </td>

                                                    <td colspan="2">
                                                        <div class="d-flex gap-2">
                                                            <!-- Boton Eliminar -->
                                                            <form action="${pageContext.servletContext.contextPath}/EliminarCliente" method="POST">
                                                                <input type="hidden" name="id" value="<%=elem.getIdClientes()%>">
                                                                <button type="submit" class="btn btn-danger" onclick="return confirm('¿Seguro de eliminar a este Cliente?')">Eliminar</button>
                                                            </form>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <%
                                                    }
                                                %>
                                                </tbody>
                                        </table>
                                    </div>                                   
                                </div> 
                                <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                    <div class="modal-dialog  modal-lg">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h1 class="modal-title fs-5" id="exampleModalLabel">Nuevo Cliente</h1>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                            </div>
                                            <form action="${pageContext.servletContext.contextPath}/ClienteController" method="POST" id="form">
                                                <div class="modal-body">
                                                    <div class="row">
                                                        <div class="col-6">
                                                            <label>ID</label>
                                                            <input type="text" name="txtID" class="form-control" id="txtID" value="0" readonly="true">
                                                        </div>
                                                        <div class="col-6">
                                                            <label>Nombres</label>
                                                            <input type="text" name="txtNombre" class="form-control" id="txtNombre">
                                                        </div>
                                                        <div class="col-6">
                                                            <label>Telefono</label>
                                                            <input type="text" name="txtTelefono" class="form-control" id="txtTelefono">
                                                        </div>
                                                        <div class="col-6">
                                                            <label>Correo</label>
                                                            <input type="text" name="txtCorreo" class="form-control" id="txtCorreo">
                                                        </div>
                                                        <div class="col-6">
                                                            <label>Direccion</label>                             
                                                            <input type="text" name="txtDireccion" class="form-control" id="txtDireccion">                                             
                                                        </div>
                                                        <div class="col-6">
                                                            <label>DNI</label>                             
                                                            <input type="number"  name="txtDNI" class="form-control" id="txtDNI">                                             
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="modal-footer">                                                    
                                                    <div class="col-12">
                                                        <button type="submit" name="btnGuardar" class="btn btn-success">Guardar</button>
                                                        <button type="submit" name="btnEditar" class="btn btn-dark">Editar</button>
                                                        <button type="button" class="btn btn-info" data-bs-dismiss="modal">Cancelar</button>
                                                    </div>
                                                </div> 
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                </main>
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted"> &copy;Colitas Felices 2024</div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>               
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.4/jquery.min.js" integrity="sha512-pumBsjNRGGqkPzKHndZMaAG+bir374sORyzM3uulLV14lN5LyykqNk8eEeUlUkB3U0M4FApyaHraT65ihJhDpQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.12.3/dist/sweetalert2.all.min.js"></script>
        <script src="https://cdn.datatables.net/2.1.2/js/dataTables.min.js"></script>
        <script src="js/scripts.js"></script>
        <%
            if (request.getAttribute("message") != null) {
        %>
        <script>alert('<%=request.getAttribute("message")%>')</script>
        <%
            }
        %>
        <script src="${pageContext.servletContext.contextPath}/js/Clientes.js"></script>
    </body>
</html>
