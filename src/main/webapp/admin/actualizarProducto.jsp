<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link href="../css/registrouser.css" rel="stylesheet" />
<title>MinimarketEarth</title>
</head>
<body>

	<div
		class="container-fluid vh-100 d-flex justify-content-center align-items-center">

		<div class="col-12 col-md-6">

			<section>
				<div class="row">
					<div class="col-4">
						<img alt="imagen del producto" src="img/productos/${p.idprod.jpg}" width="200px"
							height="200px">
					</div>
					<div class="col-8">

						<form action="" method="post" class="row g-3">
							<h1>Actualizar Producto</h1>
							<div class="mb-3 row"></div>
							<div class="mb-3 row">
								<label for="inputCod" class="col">Codigo:</label> <input
									disabled="disabled" name="codigo" value="${p.idprod}"
									type="text" class="form-control" id="" placeholder="">
							</div>
							<div class="mb-3 row">
								<label for="inputnom" class="col">Descripcion del
									Producto:</label> <input type="text" class="form-control"
									value="${p.decripcion}" id="" name="descripcion">
							</div>
							<div class="mb-3 row">
								<label for="inputstock" class="col">Stock:</label> <input
									type="text" class="form-control" value="${p.stock}" id=""
									name="stock">
							</div>
							<div class="mb-3 row">
								<label for="inputpre" class="col">Precio:</label> <input
									type="number" class="form-control" value="${p.precio}" id=""
									name="stock">
							</div>

							<!-- Categoría (COMBO) -->
							<div class="col-md-6">
								<label for="categoria" class="form-label">Categoria:</label> <select
									class="form-select" id="categoria" name="categoria" required>
									<option value="">Seleccione</option>
									<c:forEach var="c" items="${lstCategorias}">
										<option value="${c.idcategoria}">${c.descripcion}</option>
									</c:forEach>
								</select>
							</div>

							<!-- Estado (COMBO) -->
							<div class="col-md-6">
								<label for="estado" class="form-label">Estado</label> <select
									class="form-select" id="estado" name="estado" required>
									<option value="">Seleccione</option>
									<c:forEach var="e" items="${lstEstados}">
										<option value="${e.idestado}">${e.descripcion}</option>
									</c:forEach>
								</select>
							</div>

							<div class="col-12">
								<button type="submit" class="btn btn-primary">
									Guardar
								</button>
							</div>
						</form>

					</div>
				</div>
			</section>


		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>