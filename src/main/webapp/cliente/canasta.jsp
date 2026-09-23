<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<title>Carrito</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
</head>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

<body>

<c:if test="${not empty sessionScope.msgOk}">
	<div class="alert alert-success alert-dismissible fade show" role="alert">
		<i class="fas fa-check-circle"></i>
		${sessionScope.msgOk}
		<button type="button" class="btn-close" data-bs-dismiss="alert"></button>
	</div>
	<%
		session.removeAttribute("msgOk");
	%>
</c:if>


<div class="container mt-4">

	<h1 class="mb-4">Carrito de compra</h1>

	<c:choose>

		<c:when test="${empty sessionScope.canasta}">
			<div class="text-center">
			<img src="${pageContext.request.contextPath}/imagenes/productos/vacio.jpg" width="200" alt="Carrito vacío">
				<p class="mt-3">
					Su carrito de compras está vacío,
					<a href="../ClientePaginaPrincipal.jsp">aquí</a> para empezar a comprar
				</p>
			</div>
		</c:when>

		<c:otherwise>

			<div class="row">

				<div class="col-md-8">
					<table class="table table-bordered text-center align-middle">
						<thead class="table-dark">
							<tr>
								<th>Código</th>
								<th>Producto</th>
								<th>Cantidad</th>
								<th>Precio</th>
								<th>SubTotal</th>
								<th></th>
							</tr>
						</thead>

						<tbody>
							<c:forEach var="d" items="${sessionScope.canasta}">
								<tr>
									<td>${d.idprod}</td>
									<td>${d.descripcion}</td>

									<td>
										<a href="${pageContext.request.contextPath}/DisminuirCantidadServlet?cod=${d.idprod}"
										   class="btn btn-outline-secondary btn-sm">−</a>
										<span class="mx-2">${d.cantidad}</span>
										<a href="${pageContext.request.contextPath}/AumentarCantidadServlet?cod=${d.idprod}"
										   class="btn btn-outline-secondary btn-sm">+</a>
									</td>

									<td>S/
										<fmt:formatNumber value="${d.precio}" type="number"
											minFractionDigits="2" maxFractionDigits="2" />
									</td>

									<td>S/
										<fmt:formatNumber value="${d.subtotal}" type="number"
											minFractionDigits="2" maxFractionDigits="2" />
									</td>

									<td>
										<a href="${pageContext.request.contextPath}/EliminarProductoCarritoServlet?cod=${d.idprod}"
										   class="btn btn-outline-danger btn-sm">
											<i class="fas fa-trash"></i>
										</a>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>

					<a href="../Productos.jsp" class="btn btn-primary">
						<i class="fa fa-shopping-cart"></i> Continuar comprando
					</a>
				</div>

				<div class="col-md-4">
					<div class="card">
						<div class="card-header bg-dark text-white">
							Resumen del pedido
						</div>

						<div class="card-body">
							<p><b>Total artículos:</b> ${sessionScope.cantProductos}</p>

							<p>
								<b>Total importe:</b> S/.
								<fmt:formatNumber value="${sessionScope.subTotal}"
									type="number" minFractionDigits="2" maxFractionDigits="2" />
							</p>

							<a href="${pageContext.request.contextPath}/ConfirmarCompraServlet"
							   class="btn btn-success w-100 mt-3">
								Procesar compra <i class="fas fa-credit-card"></i>
							</a>
						</div>
					</div>
				</div>

			</div>

		</c:otherwise>

	</c:choose>

</div>

</body>
</html>
