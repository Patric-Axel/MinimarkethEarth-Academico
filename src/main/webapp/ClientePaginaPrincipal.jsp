<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MarketEarth</title>
<link rel="stylesheet" href="css/estilos.css">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
<!-- librerias para q el carrusel funcione: OWL CAROUSEL -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css" />

<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>

<!-- OWL CAROUSEL JS -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>


</head>
<body style="background: #f4f6f9;">

	<jsp:include page="./componentes/NAVMENU.jsp"></jsp:include>





	<section class="text-white py-5"
		style="background: linear-gradient(rgba(0, 0, 0, .45), rgba(0, 0, 0, .45)), url('https://images.unsplash.com/photo-1583258292688-d0213dc5a3a8'); background-size: cover; background-position: center;">

		<div class="container mb-4">
			<h1 class="fw-bold">Todo para tu hogar</h1>
			<p class="fs-5">Abarrotes, bebidas, limpieza y más</p>
		</div>


		<div class="owl-carousel carrusel-market px-4">
			<img src="./imagenes/slide1.jpeg" class="rounded"> <img
				src="./imagenes/slide2.jpeg" class="rounded"> <img
				src="./imagenes/slide3.jpeg" class="rounded">
		</div>

	</section>


	<div class="container my-5">


		<section class="mb-5">

			<div class="d-flex justify-content-between align-items-center mb-4">
				<h4 class="fw-bold text-success">Nuevos productos</h4>
				<a href="abarrotes"
					class="fw-semibold text-success text-decoration-none"> Ver más
					→ </a>
			</div>

			<div class="row g-4 justify-content-center">

				<div class="col-6 col-md-4 col-lg-3">
					<div class="card h-100 shadow-sm position-relative">

						<span class="badge bg-success position-absolute top-0 start-0 m-2">
							NUEVO </span> <img
							src="https://corporacionliderperu.com/52886-home_default/paneton-sayon-caja-x-750-gr-x-6-un.jpg"
							class="card-img-top p-3"
							style="height: 200px; object-fit: contain;">

						<div class="card-body text-center">
							<h6 class="card-title">Panetón Sayón</h6>
							<p class="text-danger fw-bold fs-5 mb-2">S/ 19.90</p>
							<a href="abarrotes"
								class="btn btn-success btn-sm w-100 fw-semibold"> Agregar </a>
						</div>

					</div>
				</div>

				<div class="col-6 col-md-4 col-lg-3">
					<div class="card h-100 shadow-sm position-relative">

						<span class="badge bg-success position-absolute top-0 start-0 m-2">
							NUEVO </span> <img
							src="https://corporacionliderperu.com/52894-home_default/sol-del-cusco-tableta-para-taza-x-90-gr-tradicional.jpg"
							class="card-img-top p-3"
							style="height: 200px; object-fit: contain;">

						<div class="card-body text-center">
							<h6 class="card-title">Chocolate Cusco</h6>
							<p class="text-danger fw-bold fs-5 mb-2">S/ 6.50</p>
							<a href="abarrotes"
								class="btn btn-success btn-sm w-100 fw-semibold"> Agregar </a>
						</div>

					</div>
				</div>

			</div>
		</section>


		<!-- pfertas y packs -->
		<section class="py-5 mb-5"
			style="background: #fff3f3; border-radius: 12px;">

			<div class="container">

				<div class="d-flex justify-content-between align-items-center mb-4">
					<h4 class="fw-bold text-danger">Ofertas y Packs</h4>
					<a href="abarrotes"
						class="fw-semibold text-danger text-decoration-none"> Ver más
						→ </a>
				</div>

				<div class="row g-4 justify-content-center">

					<div class="col-6 col-md-4 col-lg-3">
						<div class="card h-100 border-danger shadow-sm position-relative">

							<span class="badge bg-danger position-absolute top-0 start-0 m-2">
								OFERTA </span> <img
								src="https://corporacionliderperu.com/52888-home_default/paneton-donofrio-caja-x-880-gr.jpg"
								class="card-img-top p-3"
								style="height: 200px; object-fit: contain;">

							<div class="card-body text-center">
								<h6 class="card-title">Panetón Donofrio</h6>
								<p class="text-danger fw-bold fs-5 mb-2">S/ 15.90</p>
								<a href="abarrotes"
									class="btn btn-danger btn-sm w-100 fw-semibold"> Agregar </a>
							</div>

						</div>
					</div>

					<div class="col-6 col-md-4 col-lg-3">
						<div class="card h-100 border-danger shadow-sm position-relative">

							<span class="badge bg-danger position-absolute top-0 start-0 m-2">
								OFERTA </span> <img
								src="https://corporacionliderperu.com/51334-home_default/sapolio-sacagrasa-gatillo-x-650-ml-limon.jpg"
								class="card-img-top p-3"
								style="height: 200px; object-fit: contain;">

							<div class="card-body text-center">
								<h6 class="card-title">Sapolio Limón</h6>
								<p class="text-danger fw-bold fs-5 mb-2">S/ 8.90</p>
								<a href="abarrotes"
									class="btn btn-danger btn-sm w-100 fw-semibold"> Agregar </a>
							</div>

						</div>
					</div>

				</div>
			</div>
		</section>


		<!-- mas comprados-->
		<section>

			<div class="d-flex justify-content-between align-items-center mb-4">
				<h4 class="fw-bold text-warning">Los más comprados</h4>
				<a href="abarrotes"
					class="fw-semibold text-warning text-decoration-none"> Ver más
					→ </a>
			</div>

			<div class="row g-4 justify-content-center">

				<div class="col-6 col-md-4 col-lg-3">
					<div class="card h-100 shadow-sm position-relative">

						<span
							class="badge bg-warning text-dark position-absolute top-0 start-0 m-2">
							TOP </span> <img
							src="https://corporacionliderperu.com/49981-home_default/costeno-arroz-extra-x-750-gr-exo-igv.jpg"
							class="card-img-top p-3"
							style="height: 200px; object-fit: contain;">

						<div class="card-body text-center">
							<h6 class="card-title">Arroz Costeño</h6>
							<p class="text-danger fw-bold fs-5 mb-2">S/ 4.90</p>
							<a href="abarrotes"
								class="btn btn-warning btn-sm w-100 fw-semibold"> Agregar </a>
						</div>

					</div>
				</div>

				<div class="col-6 col-md-4 col-lg-3">
					<div class="card h-100 shadow-sm position-relative">

						<span
							class="badge bg-warning text-dark position-absolute top-0 start-0 m-2">
							TOP </span> <img
							src="https://corporacionliderperu.com/51025-home_default/campomar-grated-de-atun-x-160-gr.jpg"
							class="card-img-top p-3"
							style="height: 200px; object-fit: contain;">

						<div class="card-body text-center">
							<h6 class="card-title">Atún Campomar</h6>
							<p class="text-danger fw-bold fs-5 mb-2">S/ 7.50</p>
							<a href="abarrotes"
								class="btn btn-warning btn-sm w-100 fw-semibold"> Agregar </a>
						</div>

					</div>
				</div>

			</div>
		</section>

	</div>



	<section class="bg-white py-5">
		<div class="container">
			<div class="row text-center">
				<div class="col-md-4">
					<i class="bi bi-truck fs-1 text-success"></i>
					<h5 class="fw-bold mt-2">Entrega rápida</h5>
					<p class="text-muted">Recibe tu pedido el mismo día</p>
				</div>
				<div class="col-md-4">
					<i class="bi bi-shield-check fs-1 text-primary"></i>
					<h5 class="fw-bold mt-2">Compra segura</h5>
					<p class="text-muted">Protegemos tus datos</p>
				</div>
				<div class="col-md-4">
					<i class="bi bi-cash-coin fs-1 text-warning"></i>
					<h5 class="fw-bold mt-2">Precios bajos</h5>
					<p class="text-muted">Ofertas todos los días</p>
				</div>
			</div>
		</div>
	</section>



	<jsp:include page="./componentes/Footer.jsp"></jsp:include>




	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
		crossorigin="anonymous"></script>

	<script>
		$(document).ready(
				function() {
					$(".carrusel-market").owlCarousel(
							{
								loop : true,
								margin : 40,
								center : true,
								autoplay : true,
								autoplayTimeout : 3500,
								autoplayHoverPause : true,
								smartSpeed : 900,
								items : 1,
								stagePadding : 200,
								nav : true,
								dots : true,
								navText : [
										"<i class='bi bi-chevron-left'></i>",
										"<i class='bi bi-chevron-right'></i>" ]
							});
				});
	</script>

	<script>
		function move(btn, amount) {
			const carousel = btn.closest('.col').querySelector('.carousel');
			carousel.scrollBy({
				left : amount,
				behavior : "smooth"
			});
		}
	</script>





</body>
</html>