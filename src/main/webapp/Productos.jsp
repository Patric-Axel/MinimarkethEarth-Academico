<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<title>MarketEarth/Productos</title>
<link rel="stylesheet" href="css/estilos.css">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">

<!-- OWL CAROUSEL -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css" />

<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>

</head>

<body>

	<jsp:include page="./componentes/NAVMENU.jsp" />

	<div class="container my-5">

		<h1 class="text-center mb-5">Nuestros Productos</h1>


		<!-- abarrotes -->
		<section class="mb-5">
			<h3 class="mb-3">🛒 Abarrotes</h3>
			<p>Productos básicos de la canasta familiar como arroz, fideos,
				aceites, conservas y menestras de marcas reconocidas.</p>

			<div class="owl-carousel owl-theme">
				<img src="img/productos/P0001.jpg" class="img-fluid rounded">
				<img src="img/productos/P0002.jpg" class="img-fluid rounded">
				<img src="img/productos/P0003.jpg" class="img-fluid rounded">
			</div>

			<a href="abarrotes" class="btn btn-primary mt-3"> Ver
				productos </a>
		</section>

		<!-- bebidas -->
		<section class="mb-5">
			<h3 class="mb-3">🥤 Bebidas</h3>
			<p>Gaseosas, jugos, agua mineral y bebidas energéticas ideales
				para toda ocasión.</p>

			<div class="owl-carousel owl-theme">
				<img src="img/productos/P0008.jpg" class="img-fluid rounded">
				<img src="img/productos/P0009.jpg" class="img-fluid rounded">
				<img src="img/productos/P0006.jpg" class="img-fluid rounded">
			</div>

			<a href="bebidas" class="btn btn-primary mt-3"> Ver
				productos </a>
		</section>

		<!-- licores -->
		<section class="mb-5">
			<h3 class="mb-3">🍷 Licores</h3>
			<p>Cervezas, vinos y licores nacionales e importados para
				celebraciones y eventos especiales.</p>

			<div class="owl-carousel owl-theme">
				<img src="img/productos/P0011.jpg" class="img-fluid rounded">
				<img src="img/productos/P0012.jpg" class="img-fluid rounded">
				<img src="img/productos/P0013.jpg" class="img-fluid rounded">
			</div>

			<a href="licores" class="btn btn-primary mt-3"> Ver
				productos </a>
		</section>

		<!-- limpieza -->
		<section class="mb-5">
			<h3 class="mb-3">🧼 Limpieza</h3>
			<p>Productos de limpieza y desinfección para el cuidado del
				hogar, manteniendo ambientes seguros.</p>

			<div class="owl-carousel owl-theme">
				<img src="img/productos/P0017.jpg" class="img-fluid rounded">
				<img src="img/productos/P0018.jpg" class="img-fluid rounded">
				<img src="img/productos/P0021.jpg" class="img-fluid rounded">
			</div>

			<a href="limpieza" class="btn btn-primary mt-3"> Ver
				productos </a>
		</section>


	</div>

	<jsp:include page="./componentes/Footer.jsp" />

	<script>
		$(document).ready(function() {
			$(".owl-carousel").owlCarousel({
				loop : true,
				margin : 15,
				nav : true,
				dots : false,
				responsive : {
					0 : {
						items : 1
					},
					768 : {
						items : 2
					},
					1000 : {
						items : 3
					}
				}
			});
		});
	</script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
