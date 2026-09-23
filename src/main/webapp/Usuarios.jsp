
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="css/estiloAdmin.css" rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
	rel="stylesheet">
<title>MinimarkEarth</title>
</head>
<body>
	<jsp:include page="/componentes/header.jsp"></jsp:include>

	<jsp:include page="/componentes/Menu_Nav.jsp"></jsp:include>

	<div>
		
		<form class="d-flex justify-content-center my-3" role="search">
			<div class="d-flex w-25">
				<input class="form-control me-2" type="search" placeholder="Search"
					aria-label="Search">
			</div>
		</form>
	</div>

	<div class="container my-4 table-responsive">
	<table class="table table-hover align-middle">
		<thead>
			<tr>
				<th scope="col">Codigo</th>
				<th scope="col">Nombre</th>
				<th scope="col">Apellido</th>
				<th scope="col">Usuario</th>
				<th scope="col">Correo</th>
				<th scope="col">Clave</th>
				<th scope="col">Fecha de Nacimiento</th>
				<th scope="col">Celular</th>
				<th scope="col">Tipo</th>
				<th scope="col">Estado</th>
				<th scope="col">Acciones</th>

			</tr>
		</thead>
		<tbody class="table-group-divider">
    <c:forEach items="${lstUsuarios}" var="p">
        <tr>
            <th scope="row">${p.codigo}</th>
            <td>${p.nombre}</td>
            <td>${p.apellido}</td>
            <td>${p.usuario}</td>
            <td>${p.correo}</td>
            <td>${p.clave}</td>
            <td>${p.fnacim}</td>
            <td>${p.celular}</td>
            <td>${p.tipo}</td>
            <td>${p.estado}</td>
            <td class="text-center">
                <a href="Actualiza.jsp" class="btn btn-warning btn-sm">Actualizar</a>
                <a href="registro.jsp" class="btn btn-primary btn-sm">Registrar</a>
                <a href="" class="btn btn-danger btn-sm">Eliminar</a>
            </td>
        </tr>
    </c:forEach>
</tbody>
	</table>
	</div>

	<nav aria-label="Page navigation example">
		<ul class="pagination">
			<li class="page-item"><a class="page-link" href="#"
				aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
			</a></li>
			<li class="page-item"><a class="page-link" href="#">1</a></li>
			<li class="page-item"><a class="page-link" href="#">2</a></li>
			<li class="page-item"><a class="page-link" href="#">3</a></li>
			<li class="page-item"><a class="page-link" href="#"
				aria-label="Next"> <span aria-hidden="true">&raquo;</span>
			</a></li>
		</ul>
	</nav>

</body>
</html>
