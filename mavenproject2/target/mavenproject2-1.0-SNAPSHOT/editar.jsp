<%@page import="com.codoacodo.dto.Orador"%>
<html>
    <head>
        <%@include file="head.jsp"%>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Editar Orador</title>
        <link rel="stylesheet" href="../CSS/styles.css"/>
    </head>
    <body data-bs-theme="dark">
        <main>            
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
            <div class="container">
                <section class="container border border-success rounded-4 mt-4 col-6 mx-auto" style="background-color: rgb(55, 103, 85)">
                    <%
                        Orador orador = (Orador) request.getAttribute("orador");
                    %>
                    <h2 class="text-center mt-3">Editar Orador</h2>
                    <!--  JSP -->
                    <form method="POST"
                          action="<%=request.getContextPath()%>/api/EditarController">

                        <% session.setAttribute("id", orador.getIdOrador());%>

                        <div class="mb-2 mx-1">
                            <label for="exampleFormControlInput1" class="form-label">Nombre</label>
                            <input name="nombre"
                                   value="<%=orador.getNombre()%>"  
                                   type="text" class="form-control border border-success rounded-3" id="nombre" placeholder="Nombre" maxlength="50" required>
                        </div>
                        <div class="mb-2 mx-1">
                            <label for="exampleFormControlTextarea1" class="form-label">Apellido</label>
                            <input name="apellido"
                                   value="<%=orador.getApellido()%>" 
                                   type="text" class="form-control border border-success rounded-3" id="apellido" required>
                        </div>
                        <div class="mb-2 mx-1">
                            <label for="mail" class="form-label">Mail</label>
                            <input value="<%=orador.getMail()%>" name="mail" type="email" class="form-control border border-success rounded-3" id="mail" placeholder="Mail" maxlength="80" required>
                        </div>
                        <div class="mb-2 mx-1">
                            <label for="exampleFormControlTextarea1" class="form-label">Tema</label>
                            <input name="tema"
                                   value="<%=orador.getTema()%>" 
                                   type="text" class="form-control border border-success rounded-3" id="tema" required>                           
                        </div>
                        <div class="mt-3 d-flex justify-content-center">
                            <button class="btn btn-success">
                                Editar
                            </button>
                        </div>
                    </form>
                </section>
            </div>
        </main>
    </body>	
</html>