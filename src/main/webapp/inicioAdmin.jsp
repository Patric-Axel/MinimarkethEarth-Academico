<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Minimarket</title>
<link href="css/estiloAdmin.css" rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>

<body>

	<jsp:include page="/componentes/header.jsp"></jsp:include>
	<div id="contenedor">
		<jsp:include page="/componentes/Menu_Nav.jsp"></jsp:include>

		<main>

			<section class="container my-4 ">
				<div class="row g-3">
					<div class="col-4 txt">
						<img src="img/produpng.png" class="img-fluid w-100 border-img"
							alt="">
						<p class="fw-semibold text-center">
							<a href="listprod" class="link">PRODUCTOS </a>
						</p>
					</div>
					<div class="col-4 txt">
						<img src="img/clientes.jpg" class="img-fluid w-100 border-img"
							alt="">
						<p class="fw-semibold text-center">
							<a href="listusu" class="link">USUARIOS</a>
						</p>
					</div>
					<div class="col-4 txt">
						<img src="img/ventaslogo.png" class="img-fluid w-100 border-img"
							alt="">
						<p class="fw-semibold text-center">
							<a href="reporteVentas" class="link">REPORTE DE VENTAS </a>
						</p>
					</div>
				</div>
			</section>
		</main>
		<footer class="admin-footer">
			<p class=" fs-4">Derechos Reservados. Lima, Perú - 2025</p>

		</footer>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
