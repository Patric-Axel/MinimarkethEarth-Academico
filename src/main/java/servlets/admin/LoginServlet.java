package servlets.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mantenimiento.UsuarioDAOImpl;
import model.UsuarioDTO;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet(name = "acceso", urlPatterns = { "/acceso" })
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		//VALIDAR USUARIO , FALTA LA CONDICIONAL DE SI ES USUARIO ADMIN ENVIAR AL INIOC ADMIN SI ES CLIENTE ENVIAR A INDEX CLIENTE
		// 1. Obtener los datos del formulario
		System.out.println("Id de sesión: " + request.getSession().getId());
		System.out.println("Creado : " + request.getSession().getCreationTime());
		
		String usuario = request.getParameter("usuario");
		String clave = request.getParameter("clave");

		// 2. Crear el objeto DAO (donde está el método validarUsuario)
		UsuarioDAOImpl dao = new UsuarioDAOImpl();

		// 3. Validar el usuario
		UsuarioDTO u = dao.validarUsuario(usuario, clave);

		// 4. Comprobar si se encontró el usuario
		if (u != null) {
			// Usuario válido
			// Guardar información en sesión
			HttpSession session = request.getSession();
			session.setAttribute("usuario", u);
			
			if (u.getTipo() == 1) {
	            // ADMIN
	            response.sendRedirect("inicioAdmin.jsp");
	        } else if (u.getTipo() == 2) {
	            // CLIENTE
	            response.sendRedirect("ClientePaginaPrincipal.jsp");
	        } else {
	            // tipo no reconocido
	            response.sendRedirect("login.jsp");
	        }
		} else {
			// Usuario inválido
			// Enviar mensaje de error al login
			request.setAttribute("mensaje","<script>Swal.fire({title: 'Aviso!',text: 'Usuario o clave incorrecto!',icon:'error'});</script>");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
		
		
		
	}
}
