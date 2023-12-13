<!DOCTYPE html>
<html lang="es-ar">
    <head>
        <%@include file="head.jsp" %>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Inicio</title>
        <link rel="stylesheet" href="./CSS/styles.css"/>
    </head>	
    <body data-bs-theme="dark">        
        <nav class="navbar navbar-expand-xl bgColor">
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
        <main class="container mt-4">
            <div class="container">
                <section class="border border-success rounded-4 text-center p-3" style="background-color: rgb(55, 103, 85)">
                    <h1 class="">Codo a Codo</h1>
                    <h2 class="">TP Final JAVA </h2>
                    <h2>CRUD de Oradores</h2>
                    <h3>Comisión 23559</h3>
                    <h3 class="card-text">Alumno: Marchesi Lucio</h3>                    
                    <h3>Docente: Nicolás Elias Rivera</h3>
                </section>
            </div>
        </main>
        <%@include file="footer.jsp" %>
    </body>	
</html>