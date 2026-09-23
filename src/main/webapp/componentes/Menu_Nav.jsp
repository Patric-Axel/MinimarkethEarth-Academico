<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<nav class="navbar navbar-expand-lg bg-body-tertiary ">
	<div class="container-fluid ">
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse justify-content-center"
			id="navbarNavDropdown">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link active fs-4"
					aria-current="page" href="${ctx}/inicioAdmin.jsp">Inicio</a></li>
				<li class="nav-item"><a class="nav-link " href="${ctx}/listprod">Productos</a>
				</li>
				<li class="nav-item"><a class="nav-link " href="${ctx}/listusu">Usuarios</a>
				</li>
				<li class="nav-item"><a class="nav-link " href="${ctx}/reporteVentas">Reporte
						de Ventas</a></li>
				<li class="nav-item"><a class="nav-link " href="${ctx}/logout">Cerrar
						Sesion</a></li>
			</ul>
		</div>
	</div>
</nav>
