<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="css/estiloAdmin.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.datatables.net/2.3.2/css/dataTables.dataTables.min.css">
<!-- jQuery  -->
<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<!-- DataTables Librería -->
<script src="https://cdn.datatables.net/2.3.2/js/dataTables.min.js"></script>

<!-- recursos adicionales -->
<link rel="stylesheet"
	href="https://cdn.datatables.net/buttons/2.4.1/css/buttons.dataTables.min.css">

<script
	src="https://cdn.datatables.net/buttons/2.4.1/js/dataTables.buttons.min.js"></script>
<script
	src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.html5.min.js"></script>
<script
	src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.print.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.10.1/jszip.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/pdfmake.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/vfs_fonts.js"></script>
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
				<button class="btn btn-outline-success" type="submit">
					Search</button>
			</div>
			<a href="cargarproducto" class="btn btn-primary">Registrar Nuevo</a>
		</form>
	</div>

	<table id="myTable" class="table table-hover">
		<thead>
			<tr>
				<th scope="col">Id</th>
				<th scope="col">Descripcion</th>
				<th scope="col">Stock</th>
				<th scope="col">Precio</th>
				<th scope="col">Categoria</th>
				<th scope="col">Estado</th>
				<th scope="col">Accion</th>


			</tr>
		</thead>
		<tbody class="table-group-divider">
			<c:forEach items="${lstProductos}" var="p">
				<!-- colocamos lo que se quiere "repetir" -->
				<tr>
					<!-- mostramos cada columna según el campo del DTO -->
					<td scope="row"><img alt="produtos"
						src="./img/productos/${p.idprod}.jpg"
						onerror="src='./img/productos/no-imagen.png' " width="80"
						height="60"></td>
					<td>${p.descripcion}</td>
					<td>${p.stock} unidades</td>
					<td>S/${p.precio}</td>
					<td>${p.categoria }</td>
					<td>${p.estado }</td>
					<td><a href="actuprod?accion=editar&id=${p.idprod}" class="btn btn-warning">Actualizar</a>
					
					<!-- eliminar producto por completo p -->
					<a href="#" class="btn btn-danger btn-sm"
   onclick="eliminar('${p.idprod}')">Eliminar</a>

<script>
function eliminar(id){
    Swal.fire({
        title: '¿Eliminar producto?',
        text: 'Esta acción no se puede deshacer',
        icon: 'warning',
        showCancelButton: true,
        confirmButtonText: 'Sí, eliminar',
        cancelButtonText: 'Cancelar'
    }).then((result) => {
        if (result.isConfirmed) {
            window.location =
                '${pageContext.request.contextPath}/eliminarProducto?id=' + id;
        }
    });
}
</script>
</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
	<script>
		$('#myTable').DataTable({
			language : {
				url : '//cdn.datatables.net/plug-ins/1.13.6/i18n/es-ES.json'
			},
			dom : 'Bfrtip',
			buttons : [ 'excel', 'print', 'colvis', 'pageLength' ]
		});
	</script>


</body>
</html>