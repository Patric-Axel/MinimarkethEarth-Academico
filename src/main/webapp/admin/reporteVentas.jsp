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

<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<script src="https://cdn.datatables.net/2.3.2/js/dataTables.min.js"></script>

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

<title>Reporte de Ventas</title>
</head>

<body>

	<jsp:include page="/componentes/header.jsp" />
	<jsp:include page="/componentes/Menu_Nav.jsp" />

	<div class="container my-4">

		<h3 class="fw-bold mb-3">📊 Reporte de Ventas</h3>

		<table id="myTable" class="table table-hover">
			<thead class="table-dark">
				<tr>
					<th>Boleta</th>
					<th>Fecha</th>
					<th>Cliente</th>
					<th>Producto</th>
					<th>Cantidad</th>
					<th>Precio</th>
					<th>Subtotal</th>
				</tr>
			</thead>

			<tbody>
				<c:forEach items="${lstVentas}" var="v">
					<tr>
						<td>${v.numBoleta}</td>
						<td>${v.fecha}</td>
						<td>${v.cliente}</td>
						<td>${v.producto}</td>
						<td>${v.cantidad}</td>
						<td>S/ ${v.precio}</td>
						<td class="fw-bold text-success">S/ ${v.subtotal}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>

	<script>
		$('#myTable').DataTable({
			language : {
				url : '//cdn.datatables.net/plug-ins/1.13.6/i18n/es-ES.json'
			},
			dom : 'Bfrtip',
			buttons : [ 'excel', 'pdf', 'print', 'pageLength' ]
		});
	</script>

</body>
</html>
