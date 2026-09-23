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
import model.ProductoDTO;
import mantenimiento.CategoriaDAOImpl;
import mantenimiento.EstadoDAOImpl;
import mantenimiento.ProductoDAOImpl;

/**
 * Servlet implementation class ActualizarUsuarioaAdminServlet
 */
@WebServlet(name = "actuprod", urlPatterns = { "/actuprod" })
public class ActualizarProductoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ActualizarProductoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String accion = request.getParameter("accion");

        if ("editar".equals(accion)) {

            String id = request.getParameter("id");

            ProductoDTO pr =
                    new ProductoDAOImpl().buscarPorId(id);

            List<CategoriaDTO> lstCategorias =
                    new CategoriaDAOImpl().listarCategorias();

            List<EstadoDTO> lstEstados =
                    new EstadoDAOImpl().listarEstadosProductos();

            request.setAttribute("pr", pr);
            request.setAttribute("lstCategorias", lstCategorias);
            request.setAttribute("lstEstados", lstEstados);

            request.getRequestDispatcher("actualizarProducto.jsp")
                   .forward(request, response);
        }
    }
		

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// obtener el objeto Usuario de la sesión (attribute) > Cast
		ProductoDTO p = new ProductoDTO();

	    p.setIdprod(request.getParameter("codigo"));
	    p.setDescripcion(request.getParameter("descripcion"));
	    p.setStock(Integer.parseInt(request.getParameter("stock")));
	    p.setPrecio(Double.parseDouble(request.getParameter("precio")));
	    p.setIdcategoria(Integer.parseInt(request.getParameter("categoria")));
	    p.setEstado(Integer.parseInt(request.getParameter("estado")));

	    boolean ok = new ProductoDAOImpl().actualizar(p);

	    if (ok) {
	        response.sendRedirect("listprod");
	    } else {
	        request.setAttribute("error", "Error al actualizar");
	        request.getRequestDispatcher("actualizarProducto.jsp")
	               .forward(request, response);
	    }
	}

}
