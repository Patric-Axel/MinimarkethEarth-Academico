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

@WebServlet("/EliminarCuentaServlet")
public class EliminarCuentaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession(false);

		if (session == null || session.getAttribute("usuario") == null) {
			response.sendRedirect("login.jsp");
			return;
		}

		UsuarioDTO usuario = (UsuarioDTO) session.getAttribute("usuario");

		UsuarioDAO dao = new UsuarioDAOImpl();
		dao.eliminarUsuario(String.valueOf(usuario.getCodigo()));

		// cerrar sesión
		session.invalidate();

		// volver al login
		response.sendRedirect("login.jsp");
	}
}
