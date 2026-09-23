package servlets.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mantenimiento.UsuarioDAOImpl;
import model.UsuarioTipoEstadoDTO;



/**
 * Servlet implementation class ListarUsuarioServlet
 */
@WebServlet(name = "listusu", urlPatterns = { "/listusu" })
public class ListarUsuarioServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListarUsuarioServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		List<UsuarioTipoEstadoDTO> lstUsuarios = new UsuarioDAOImpl().listarUsuariosTipoEstado();

		// enviar el listado a la página "crudproductos"
		request.setAttribute("lstUsuarios", lstUsuarios);
		request.getRequestDispatcher("Usuarios.jsp").forward(request, response);
	}

}
