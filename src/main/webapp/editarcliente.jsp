<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MarketEarth</title>
<link rel="stylesheet" href="css/estilos.css">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">


<!-- JQUERY  -->
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>


</head>
<body>

<jsp:include page="./componentes/NAVMENU.jsp"></jsp:include>



<div class="container mt-5">

    <h3 class="mb-4">Actualizar mis datos</h3>

    <!--cuando iniciamos -->
    <c:set var="u" value="${sessionScope.usuario}" />


    <form action="ActualizarClienteServlet" method="post" class="card p-4 shadow-sm">

        <div class="row mb-3">
            <div class="col">
                <label class="form-label">Nombre</label>
                <input type="text" name="nombre" class="form-control"
                       value="${u.nombre}" required>
            </div>

            <div class="col">
                <label class="form-label">Apellido</label>
                <input type="text" name="apellido" class="form-control"
                       value="${u.apellido}" required>
            </div>
        </div>

        <div class="mb-3">
            <label class="form-label">Correo</label>
            <input type="email" name="correo" class="form-control"
                   value="${u.correo}" required>
        </div>

        <div class="mb-3">
            <label class="form-label">Celular</label>
            <input type="text" name="celular" class="form-control"
                   value="${u.celular}">
        </div>

        <button type="submit" class="btn btn-primary">
            Guardar cambios
        </button>

    </form>

    <!-- borrar la cuenta hasta en la bd -->
    <div class="card mt-5 border-danger p-4">

        <h5 class="text-danger">Eliminar cuenta</h5>
        <p class="text-muted">
            Esta acción eliminará permanentemente tu cuenta y no se puede deshacer.
        </p>

      <form action="EliminarCuentaServlet" method="post"
      onsubmit="return confirm('¿Estás seguro de eliminar tu cuenta? Esta acción no se puede deshacer');">

    <button type="submit" class="btn btn-danger">
        Eliminar cuenta
    </button>

</form>


    </div>

</div>
   
    


<jsp:include page="./componentes/Footer.jsp"></jsp:include>




<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>


</body>
</html>