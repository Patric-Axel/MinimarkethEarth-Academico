package servlets.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mantenimiento.ProductoDAOImpl;

import model.ProductoDTO;

/**
 * Servlet implementation class RegistrarProductoServlet
 */
@WebServlet(name = "registrarprod", urlPatterns = { "/registrarprod" })
public class RegistrarProductoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RegistrarProductoServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			// REGISTRAR USUARIO
			// LEEMOS LOS DATOS QUE FUERON INGRESADOS EN EL FORMULARIO
			String idprod = request.getParameter("codigo");
			String descripcion = request.getParameter("descripcion");
			int stock = Integer.parseInt(request.getParameter("stock"));
			double precio = Double.parseDouble(request.getParameter("precio"));
			int idcategoria = Integer.parseInt(request.getParameter("categoria"));
			int estado = Integer.parseInt(request.getParameter("estado"));

			// SE CREA, CREAMOS UN NUEVO OBJETO (USUARIO)
			ProductoDTO p = new ProductoDTO();
			p.setIdprod(idprod);
			p.setDescripcion(descripcion);
			p.setStock(stock);
			p.setPrecio(precio);
			p.setIdcategoria(idcategoria);
			p.setEstado(estado);

			// llamar a la implementacion y metodo para guardar el resultado
			boolean ok = new ProductoDAOImpl().registrar(p);
			if (ok) {
				// enviar mensaje
				response.sendRedirect("listprod");
			} else {
				request.setAttribute("mensaje",
						"<script>Swal.fire({title: 'Aviso!',text: 'ERROR:!',icon: 'error'});</script>");
				request.getRequestDispatcher("cargarproducto").forward(request, response);
			}

		} catch (Exception e) {
			request.setAttribute("mensaje",
					"<script>Swal.fire({title: 'Aviso!',text: 'ERROR:!',icon: 'error'});</script>");
			request.getRequestDispatcher("cargarproducto").forward(request, response);
		}

	}

}
