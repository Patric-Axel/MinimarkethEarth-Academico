<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Abarrotes</title>

<link rel="stylesheet" href="css/estilos.css">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">

<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</head>

<body>

	<jsp:include page="/componentes/NAVMENU.jsp" />

	<div class="container-fluid container-bordes my-4">
		<div class="row">

			<!--- filtros es meramente visual falta tiempo --->
<aside class="col-12 col-md-3 col-lg-2 mb-4">
    <div class="bg-white p-3 border rounded shadow-sm">

        <h5 class="fw-bold mb-3">Filtros</h5>

        <div class="mb-4">
            <p class="fw-semibold mb-2">Categoría</p>

            <div class="form-check">
                <input class="form-check-input" type="checkbox" id="cat1">
                <label class="form-check-label" for="cat1">Arroz</label>
            </div>

            <div class="form-check">
                <input class="form-check-input" type="checkbox" id="cat2">
                <label class="form-check-label" for="cat2">Fideos</label>
            </div>

            <div class="form-check">
                <input class="form-check-input" type="checkbox" id="cat3">
                <label class="form-check-label" for="cat3">Conservas</label>
            </div>

            <div class="form-check">
                <input class="form-check-input" type="checkbox" id="cat4">
                <label class="form-check-label" for="cat4">Condimentos</label>
            </div>
        </div>

        <hr>

        <div class="mb-4">
            <p class="fw-semibold mb-2">Precio máximo</p>

            <form action="abarrotes" method="get">
                <label class="form-label">
                    Hasta S/ <span id="precioValor">20</span>
                </label>

                <input type="range"
                       name="maxPrecio"
                       min="1"
                       max="20"
                       value="20"
                       class="form-range"
                       oninput="precioValor.innerText=this.value">

                <button class="btn btn-primary w-100 mt-2">
                    Aplicar filtros
                </button>
            </form>
        </div>

        <hr>

        <div>
            <p class="fw-semibold mb-2">Marcas</p>

            <div class="form-check">
                <input class="form-check-input" type="checkbox" id="m1">
                <label class="form-check-label" for="m1">Costeño</label>
            </div>

            <div class="form-check">
                <input class="form-check-input" type="checkbox" id="m2">
                <label class="form-check-label" for="m2">Alicorp</label>
            </div>

            <div class="form-check">
                <input class="form-check-input" type="checkbox" id="m3">
                <label class="form-check-label" for="m3">Florida</label>
            </div>
        </div>

    </div>
</aside>


			<!----- prodcutos parte ----->
			<section class="col-12 col-md-9 col-lg-10">
				<h4 class="fw-bold mb-3">Abarrotes</h4>

				<div class="row g-4">

					<c:if test="${empty articulo}">
						<p class="text-danger">No hay productos disponibles</p>
					</c:if>

					<c:forEach var="a" items="${articulo}">
						<div class="col-6 col-md-4 col-lg-3">
							<div class="card h-100 shadow-sm">

								<img src="./img/productos/${a.idprod}.jpg" class="card-img-top"
									alt="${a.descripcion}">

								<div class="card-body d-flex flex-column">
									<h6 class="card-title">${a.descripcion}</h6>

									<p class="text-danger fw-bold mb-2">S/ ${a.precio}</p>

									
										<a href="./AgregarCarritoServlet?cod=${a.idprod}"
											class="btn btn-success mt-auto fw-semibold"> AGREGAR </a>

								

								</div>

							</div>
						</div>
					</c:forEach>

				</div>
			</section>

		</div>
	</div>

	<jsp:include page="/componentes/Footer.jsp" />

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
