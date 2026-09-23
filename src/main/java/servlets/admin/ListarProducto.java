package servlets.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mantenimiento.ProductoDAOImpl;
import model.ProductoCategoriaEstadoDTO;
import model.ProductoDTO;

/**
 * Servlet implementation class ListarProducto
 */
@WebServlet(name = "listprod", urlPatterns = { "/listprod" })
public class ListarProducto extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ListarProducto() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//List<ProductoDTO> lstProductos = new ProductoDAOImpl().listarProductos();
		List<ProductoCategoriaEstadoDTO> lstProductos = new ProductoDAOImpl().listarProductosCategoriasEstados();

		// enviar el listado a la página "crudproductos"
		request.setAttribute("lstProductos", lstProductos);
		request.getRequestDispatcher("/admin/productos.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
