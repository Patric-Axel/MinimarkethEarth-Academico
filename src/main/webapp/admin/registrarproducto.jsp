<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
						<img alt="" src="img/productos/no-imagen.png" width="200px"
							height="200px"> 
							<label for="imageLoader"
							class="btn btn-secondary"> Cambiar imagen </label> <input
							type="file" id="imageLoader" name="imageLoader" accept="image/*"
							hidden='hidden'>
					</div>
					<div class="col-8">


						<form action="registrarprod" method="post" class="row g-3">

							<h1 class="mb-4">Registrar Producto</h1>

							<!-- Código -->
							<div class="col-md-6">
								<label for="codigo" class="form-label">Código:</label> <input
									type="text" class="form-control" id="codigo" name="codigo"
									maxlength="5"
									placeholder="P0000"
									required>
							</div>

							<!-- Descripción -->
							<div class="col-md-6">
								<label for="descripcion" class="form-label">Descripción:</label>
								<input type="text" class="form-control" id="descripcion"
									name="descripcion" 
									placeholder="Nombre de Producto"required>
							</div>

							<!-- Stock -->
							<div class="col-md-4">
								<label for="stock" class="form-label">Stock:</label> <input
									type="text" class="form-control" id="stock" name="stock"
									required>
							</div>

							<!-- Precio -->
							<div class="col-md-4">
								<label for="precio" class="form-label">Precio:</label> <input
									min="0" step="0.01" name="precio" type="number"
									class="form-control" placeholder="0.00" name="precio" required>
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

							<!-- Botón -->
							<div class="col-12">
								<button type="submit" class="btn btn-primary">
									Registrar</button>
							</div>

						${mensaje}
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