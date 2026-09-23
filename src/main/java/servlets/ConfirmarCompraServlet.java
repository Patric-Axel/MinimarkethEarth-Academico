package servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import Interfaces.CabBoletaDAO;
import Interfaces.DetBoletaDAO;
import mantenimiento.CabBoletaDAOImpl;
import mantenimiento.DetBoletaDAOImpl;
import model.DetalleBoletaDTO;
import model.UsuarioDTO;

@WebServlet("/ConfirmarCompraServlet")
public class ConfirmarCompraServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();

		List<DetalleBoletaDTO> canasta =
				(List<DetalleBoletaDTO>) session.getAttribute("canasta");

		// valida el carrito
		if (canasta == null || canasta.isEmpty()) {
			response.sendRedirect(request.getContextPath() + "/cliente/canasta.jsp");
			return;
		}

		// numero de boletas
		String numBol = String.format("%05d",
				(int) (Math.random() * 90000) + 10000);

		UsuarioDTO usu = (UsuarioDTO) session.getAttribute("usuario");
		if (usu == null) {
			response.sendRedirect(request.getContextPath() + "/login.jsp");
			return;
		}
		int codCliente = usu.getCodigo(); // ✔ Lombok lo genera


		// cabecera regirto
		CabBoletaDAO cabDAO = new CabBoletaDAOImpl();
		cabDAO.registrar(numBol, codCliente);

		// detalle registro
		DetBoletaDAO detDAO = new DetBoletaDAOImpl();

		for (DetalleBoletaDTO d : canasta) {
			detDAO.registrar(
					numBol,
					d.getIdprod(),
					d.getCantidad(),
					d.getPrecio()
			);
		}

		// limpia carrito
		canasta.clear();
		session.setAttribute("cantProductos", 0);
		session.setAttribute("subTotal", 0.0);
		session.setAttribute("msgOk", "Compra realizada con éxito");
		response.sendRedirect(request.getContextPath() + "/cliente/canasta.jsp?ok=1");
	}
}
