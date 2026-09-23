package servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import Interfaces.ArticuloDAO;
import mantenimiento.ArticuloDAOImplement;
import model.ArticuloDTO;
import model.DetalleBoletaDTO;

@WebServlet("/AgregarCarritoServlet")
public class AgregarCarritoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
		String cod = request.getParameter("cod");

		// sesion + el listener
		HttpSession session = request.getSession();

		
		List<DetalleBoletaDTO> canasta =
				(List<DetalleBoletaDTO>) session.getAttribute("canasta");

		int cantProductos = (int) session.getAttribute("cantProductos");
		double subTotal = (double) session.getAttribute("subTotal");

		boolean existe = false;

		//cantidad en el carro
		for (DetalleBoletaDTO d : canasta) {
			if (d.getIdprod().equals(cod)) {

				d.setCantidad(d.getCantidad() + 1);
				d.setSubtotal(d.getCantidad() * d.getPrecio());

				cantProductos++;
				subTotal += d.getPrecio();
				existe = true;
				break;
			}
		}

		// si no hay nada en la BD
		if (!existe) {

			ArticuloDAO dao = new ArticuloDAOImplement();
			ArticuloDTO prod = dao.buscarPorCodigo(cod);

			int cantidad = 1;
			double precio = prod.getPrecio();
			double subtotal = precio * cantidad;

			DetalleBoletaDTO detalle = new DetalleBoletaDTO(
					prod.getIdprod(),
					prod.getDescripcion(),
					precio,
					cantidad,
					subtotal
			);

			canasta.add(detalle);
			cantProductos++;
			subTotal += precio;
		}

		// sesion actualizada
		session.setAttribute("cantProductos", cantProductos);
		session.setAttribute("subTotal", subTotal);

		// redireccion
		response.sendRedirect(request.getContextPath() + "/cliente/canasta.jsp");
	}
}
