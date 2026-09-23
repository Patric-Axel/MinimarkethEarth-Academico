<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<footer class="footer-chevere">
  <div class="footer-container container">
    <div class="footer-col">
      <img src="${ctx}/imagenes/logo2.png" class="footer-logo" alt="Minimarket Earth">
      <p class="footer-phone"><i class="bi bi-whatsapp"></i> 998 346 104</p>
      <p class="footer-phone"><i class="bi bi-telephone-fill"></i> 2416422 / 2426229</p>
      <p class="footer-priv">Consulta nuestra politica de privacidad de datos personales.</p>
      <img src="${ctx}/imagenes/footer.png" class="footer-payment-methods" alt="Medios de pago aceptados">
    </div>
    <div class="footer-col"><h4>Productos</h4><ul><li><a href="${ctx}/Productos.jsp">Ofertas</a></li><li><a href="${ctx}/Productos.jsp">Novedades</a></li><li><a href="${ctx}/Productos.jsp">Mas vendidos</a></li></ul></div>
    <div class="footer-col"><h4>Politicas</h4><ul><li><a href="${ctx}/terminos.jsp">Terminos y condiciones</a></li><li><a href="${ctx}/terminos.jsp">Privacidad</a></li></ul></div>
    <div class="footer-col"><h4>Nuestra empresa</h4><ul><li><a href="${ctx}/nosotros.jsp">Contactenos</a></li><li><a href="${ctx}/nosotros.jsp">Tiendas</a></li></ul></div>
  </div>
  <div class="footer-bottom"><p>&copy; 2025 - CibertecProyecto | Todos los derechos reservados</p></div>
</footer>
