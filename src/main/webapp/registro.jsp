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
<link href="css/registrouser.css" rel="stylesheet" />
<title>MinimarketEarth</title>
</head>
<body>

	<div
		class="container-fluid vh-100 d-flex justify-content-center align-items-center">

		<div class="col-12 col-md-6">

			<form class="row g-3 needs-validation" novalidate method="post"
				action="regusu">
				<div>
					<h1>Registrar Nuevo</h1>
				</div>
				<div class="col-md-4">
					<label for="validationCustom01" class="form-label">Nombre</label> <input
						type="text" class="form-control" value="" id="validationCustom01"
						
						name="nombre" required>
				</div>
				<div class="col-md-4">
					<label for="validationCustom02" class="form-label">Apellido</label>
					<input type="text" class="form-control" value="" id="validationCustom02"
						name="apellido" required>
				</div>
				<div class="col-md-4">
					<label for="validationCustomUsername" class="form-label">Usuario</label>
					<div class="input-group has-validation">
						<span class="input-group-text" id="inputGroupPrepend">@</span> <input
							type="text" class="form-control" id="validationCustomUsername"
							aria-describedby="inputGroupPrepend" name="usuario" required>
						<div class="invalid-feedback">Please choose a username.</div>
					</div>
				</div>
				<div class="col-md-6">
					<label for="validationCustom09" class="form-label">Telefono</label>
					<input type="text" class="form-control" id="validationCustom09"
						required name="celular">
				</div>

				<div class="col-md-6">
					<label for="validationCustom03" class="form-label">Correo
						Electronico</label> <input type="email" class="form-control"
						id="validationCustom03" name="correo" required>
				</div>

				<div class="col-md-3">
					<label for="validationCustom05" class="form-label">Fecha de
						Nacimiento</label> <input type="date" class="form-control"
						id="validationCustom05" name="fnacim" required>
				</div>

				<div class="col-md-6">
					<label for="validationCustom08" class="form-label">Contraseña</label>
					<input type="password" class="form-control" id="validationCustom08"
						name="clave" maxlength="5" required>
				</div>
				<div class="col-md-6">
								<label for="tipo" class="form-label">Tipo:</label> <select
									class="form-select" id="tipo" name="tipo" required>
									<option value="">Seleccione</option>
									<c:forEach var="c" items="${lstTipos}">
										<option value="${c.idtipo}">${c.descripcion}</option>
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
					<div class="form-check">
						<input class="form-check-input" type="checkbox" value=""
							id="invalidCheck" required> <label
							class="form-check-label" for="invalidCheck"> Acepto
							terminos y condiciones </label>
						<div class="invalid-feedback">You must agree before
							submitting.</div>
					</div>
				</div>
				<div class="col-12">
					<button class="btn btn-primary" type="submit">Registrar</button>
				</div>
				${mensaje }	
			</form>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>