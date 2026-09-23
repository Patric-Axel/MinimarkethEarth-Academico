<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<nav class="navbar navbar-expand-lg bg-body-tertiary navbar-custom">
  <div class="container-fluid flex-column container-bordes">
    <div class="d-flex w-100 align-items-center justify-content-between top-row">
      <a class="navbar-brand d-flex align-items-center" href="${ctx}/ClientePaginaPrincipal.jsp"><img src="${ctx}/imagenes/logo2.png" alt="Minimarket Earth" class="logo-nav"></a>
      <form class="d-flex search-bar" role="search"><input class="form-control me-2" type="search" placeholder="Buscar..." aria-label="Buscar"><button class="btn btn-outline-success" type="submit">Buscar</button></form>
      <div class="d-flex align-items-center gap-3">
        <c:choose>
          <c:when test="${empty sessionScope.usuario}"><a href="${ctx}/login.jsp" class="nav-link" aria-label="Iniciar sesion"><i class="bi bi-person-circle fs-3"></i></a></c:when>
          <c:otherwise><div class="dropdown"><a href="#" class="nav-link dropdown-toggle d-flex align-items-center" data-bs-toggle="dropdown" aria-expanded="false"><i class="bi bi-person-circle fs-3 me-1"></i><span>${sessionScope.usuario.nombre}</span></a><ul class="dropdown-menu dropdown-menu-end shadow"><li class="dropdown-item text-center fw-bold">${sessionScope.usuario.nombre}</li><li><hr class="dropdown-divider"></li><li><a class="dropdown-item" href="${ctx}/editarcliente.jsp">Actualizar datos</a></li><li><a class="dropdown-item text-danger" href="${ctx}/logout">Cerrar sesion</a></li></ul></div></c:otherwise>
        </c:choose>
        <a href="${ctx}/cliente/canasta.jsp" class="nav-link" aria-label="Ver carrito"><i class="bi bi-cart-fill fs-3"></i></a>
      </div>
    </div>
    <button class="navbar-toggler align-self-start" type="button" data-bs-toggle="collapse" data-bs-target="#menuCliente" aria-controls="menuCliente" aria-expanded="false" aria-label="Mostrar navegacion"><span class="navbar-toggler-icon"></span></button>
    <div class="collapse navbar-collapse mt-2 w-100 bottom-row" id="menuCliente"><ul class="navbar-nav flex-grow-1 gap-4 bottom-menu">
      <li class="nav-item"><a class="nav-link active" href="${ctx}/ClientePaginaPrincipal.jsp">Inicio</a></li><li class="nav-item"><a class="nav-link" href="${ctx}/Productos.jsp">Productos</a></li>
      <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown">Categorias</a><ul class="dropdown-menu"><li><a class="dropdown-item" href="${ctx}/abarrotes">Abarrotes</a></li><li><a class="dropdown-item" href="${ctx}/licores">Licores</a></li><li><a class="dropdown-item" href="${ctx}/bebidas">Bebidas</a></li><li><a class="dropdown-item" href="${ctx}/limpieza">Limpieza</a></li></ul></li>
      <li class="nav-item"><a class="nav-link" href="${ctx}/nosotros.jsp">Nosotros</a></li>
    </ul></div>
  </div>
</nav>
