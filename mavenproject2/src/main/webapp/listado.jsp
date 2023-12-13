<%@page import="java.util.List"%>
<%@page import="com.codoacodo.dto.Orador"%>
<!DOCTYPE html>
<html lang="es-ar">
    <head>
        <%@include file="head.jsp"%>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Listado</title>	
        <link rel="stylesheet" href="../CSS/styles.css"/>
    </head>
    <body data-bs-theme="dark">   
        <nav class="navbar navbar-expand-xl bgColor">   
            <div class="container">
                <a class="navbar-brand me-0" href="/mavenproject2">
                    <img
                        src="../Images/codoacodo.png"
                        alt="logo de codo a codo"
                        width="120"
                        />
                    <span class="navbar-brand">Inicio</span>
                </a>
                <button
                    class="navbar-toggler fs-6"
                    type="button"
                    data-bs-toggle="collapse"
                    data-bs-target="#navbarNav"
                    aria-controls="navbarNav"
                    aria-expanded="false"
                    aria-label="Toggle navigation"
                    >
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div
                    class="collapse navbar-collapse justify-content-end"
                    id="navbarNav"
                    >
                    <ul class="navbar-nav fw-semibold" style="font-size: 19px">
                        <li class="nav-item">
                            <a
                                class="nav-link active"
                                aria-current="page"
                                href="<%=request.getContextPath()%>/alta.jsp"
                                >Ingresar Orador</a
                            >
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="<%=request.getContextPath()%>/api/ListadoController">Listado</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-success-emphasis" href="https://luciomarchesi.github.io/tpJs/index.html">Trabajo Front-end</a>
                        </li>                        
                    </ul>
                </div>
            </div>
        </nav> 
        <main>
            <div class="container">
                <section class="border border-success rounded-4 m-4 px-2 pt-2 pb-3 col-12 mx-auto text-center mt-4" style="background-color: rgb(55, 103, 85)">
                    <h2 class="my-4">Listado de Oradores</h2>
                    <table class="table table-sm table-striped table-hover border border-success">
                        <thead>
                            <tr>
                                <th scope="col">ID</th>
                                <th scope="col">NOMBRE</th>
                                <th scope="col">APELLIDO</th>
                                <th scope="col">MAIL</th>
                                <th scope="col">TEMA</th>
                                <th scope="col">FECHA</th>
                                <th scope="col">ACCIONES</th>
                            </tr>
                        </thead>
                        <%
                            //codigo java
                            //obtener el listado desde el request
                            //se guardo bajo el nombre de "listado"
                            List<Orador> listado = (List<Orador>) request.getAttribute("listado");
                        %>
                        <tbody>
                            <%
                                for (Orador unOrador : listado) {
                                    String modalId = "exampleModal" + unOrador.getIdOrador();
                            %>
                            <tr>
                                <th scope="row"> <%=unOrador.getIdOrador()%> </th>
                                <td><%=unOrador.getNombre()%></td>
                                <td><%=unOrador.getApellido()%></td>
                                <td><%=unOrador.getMail()%></td>
                                <td><%=unOrador.getTema()%></td>
                                <td><%=unOrador.getFechaAlta()%></td>
                                <td>                                    
                                    <a class="btn btn-success" href="<%=request.getContextPath()%>/api/EditarController?id=<%=unOrador.getIdOrador()%>" role="button">Editar</a>  
                                    <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#<%=modalId%>">
                                        Eliminar
                                    </button>
                                </td>
                            </tr>
                        <!-- Modal -->
                        <div class="modal fade" id="<%=modalId%>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h3 class="modal-title fs-5" id="exampleModalLabel">Confirmar Eliminación</h3>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        ¿Eliminar Orador?
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                        <a class="btn btn-danger" href="<%=request.getContextPath()%>/api/EliminarController?id=<%=unOrador.getIdOrador()%>" role="button">Eliminar</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%
                            }
                        %>
                        </tbody>
                    </table>
                </section>
            </div>
        </main> 
    </body>                     
</html>