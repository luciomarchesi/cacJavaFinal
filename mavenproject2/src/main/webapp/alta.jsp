<html>
    <head>
        <%@include file="head.jsp"%>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Ingresar Orador</title>
        <link rel="stylesheet" href="./CSS/styles.css"/>
    </head>
    <body data-bs-theme="dark">        
        <nav
            class="navbar navbar-expand-xl bgColor">
            <div class="container">
                <a class="navbar-brand me-0" href="/mavenproject2">
                    <img
                        src="Images/codoacodo.png"
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
            <div class="container mt-4">
                <section class="border border-success rounded-4 col-6 mx-auto text-center" style="background-color: rgb(55, 103, 85)">
                    <h2 class="text-center my-4">Ingresar Orador</h2>
                    <!--  JSP -->
                    <form method="post"
                        action="<%=request.getContextPath()%>/CreateController">
                        <div class="my-3 mx-3 border border-success rounded-3">
                          <input name="nombre"  type="text" class="form-control" id="nombreTextarea" placeholder="Nombre" maxlength="50" required>
                        </div>
                        <div class="my-3 mx-3 border border-success rounded-3">
                            <input name="apellido" type="text" class="form-control" id="apellidoTextarea" placeholder="Apellido" maxlength="50" required>
                        </div>
                        <div class="my-3 mx-3 border border-success rounded-3">
                          <input name="mail" type="email" class="form-control" id="mailTextarea" placeholder="Mail" maxlength="80" required>
                        </div>
                        <div class="my-3 mx-3 border border-success rounded-3">
                          <input name="tema" type="text" class="form-control" id="temaTextarea" maxlength="50" placeholder="Tema" required>
                        </div>
                        <button class="btn btn-success my-3">
                            Ingresar
                        </button>
                    </form>
                </section>
            </div>
        </main>
    </body>	
</html>