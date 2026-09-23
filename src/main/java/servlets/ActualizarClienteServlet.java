package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Interfaces.UsuarioDAO;
import mantenimiento.UsuarioDAOImpl;
import model.UsuarioDTO;

@WebServlet("/ActualizarClienteServlet")
public class ActualizarClienteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// sesión
		HttpSession session = request.getSession(false);

		if (session == null || session.getAttribute("usuario") == null) {
			response.sendRedirect("login.jsp");
			return;
		}

		// usuario en sesión
		UsuarioDTO usuario = (UsuarioDTO) session.getAttribute("usuario");

		// Datos del formulario
		String nombre = request.getParameter("nombre");
		String apellido = request.getParameter("apellido");
		String correo = request.getParameter("correo");
		String celular = request.getParameter("celular");

		//  actualizar DTO
		usuario.setNombre(nombre);
		usuario.setApellido(apellido);
		usuario.setCorreo(correo);
		usuario.setCelular(celular);

		
		UsuarioDAO dao = new UsuarioDAOImpl();
		dao.actualizarUsuario(usuario);
 

		//  actualizar sesión
		session.setAttribute("usuario", usuario);

		response.sendRedirect("editarcliente.jsp");
	}
}
