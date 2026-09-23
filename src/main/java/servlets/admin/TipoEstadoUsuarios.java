package servlets.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import model.EstadoDTO;
import model.TipoDTO;
import model.UsuarioTipoEstadoDTO;

/**
 * Servlet implementation class TipoEstadoUsuarios
 */
@WebServlet(name = "cargarusu", urlPatterns = { "/cargarusu" })
public class TipoEstadoUsuarios extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TipoEstadoUsuarios() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<TipoDTO> lstTipos = new mantenimiento.TipoDAOImpl().listarTipos();
		// conectar con la BD para obtener un listado de TODOS los Estados
		List<EstadoDTO> lstEstados = new mantenimiento.EstadoDAOImpl().listarEstadosProductos();
		
		 		
		request.setAttribute("lstTipos", lstTipos);
		request.setAttribute("lstEstados", lstEstados);
		// request.getRequestDispatcher("crudproductos.jsp").forward(request, response);
		request.getRequestDispatcher("registro.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
