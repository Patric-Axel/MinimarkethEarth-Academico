package servlets.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CerrarSesionServlet
 */
@WebServlet(name = "logout", urlPatterns = { "/logout" })
public class CerrarSesionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// invalidar la sesión actual
		System.out.println("Cerrando la sesión: " + request.getSession().getId());
		request.getSession().invalidate();
		// redireccionar a la página login.jsp
		response.sendRedirect("login.jsp");
	}

}
