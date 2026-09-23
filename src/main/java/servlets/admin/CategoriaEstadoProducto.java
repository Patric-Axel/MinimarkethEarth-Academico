package servlets.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.CategoriaDTO;
import model.EstadoDTO;

/**
 * Servlet implementation class CategoriaEstadoProducto
 */
@WebServlet(name = "cargarproducto", urlPatterns = { "/cargarproducto" })
public class CategoriaEstadoProducto extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CategoriaEstadoProducto() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<CategoriaDTO> lstCategorias = new mantenimiento.CategoriaDAOImpl().listarCategorias();
		// conectar con la BD para obtener un listado de TODOS los Estados
		List<EstadoDTO> lstEstados = new mantenimiento.EstadoDAOImpl().listarEstadosProductos();
		
		// enviar los listados a la página "crudproductos" 		
		request.setAttribute("lstCategorias", lstCategorias);
		request.setAttribute("lstEstados", lstEstados);
		// request.getRequestDispatcher("crudproductos.jsp").forward(request, response);
		request.getRequestDispatcher("/admin/registrarproducto.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
