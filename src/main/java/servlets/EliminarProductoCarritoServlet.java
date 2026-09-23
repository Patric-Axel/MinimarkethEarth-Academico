package servlets;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import model.DetalleBoletaDTO;

@WebServlet("/EliminarProductoCarritoServlet")
public class EliminarProductoCarritoServlet extends HttpServlet {

	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String cod = request.getParameter("cod");
		HttpSession session = request.getSession();

		List<DetalleBoletaDTO> canasta =
				(List<DetalleBoletaDTO>) session.getAttribute("canasta");

		int cantProductos = (int) session.getAttribute("cantProductos");
		double subTotal = (double) session.getAttribute("subTotal");

		Iterator<DetalleBoletaDTO> it = canasta.iterator();

		while (it.hasNext()) {
			DetalleBoletaDTO d = it.next();

			if (d.getIdprod().equals(cod)) {
				cantProductos -= d.getCantidad();
				subTotal -= d.getSubtotal();
				it.remove();
				break;
			}
		}

		session.setAttribute("cantProductos", cantProductos);
		session.setAttribute("subTotal", subTotal);

		response.sendRedirect(request.getContextPath() + "/cliente/canasta.jsp");
	}
}
