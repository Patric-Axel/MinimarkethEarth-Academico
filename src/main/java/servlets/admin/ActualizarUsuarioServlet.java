package servlets.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mantenimiento.UsuarioDAOImpl;
import model.UsuarioDTO;
import model.UsuarioTipoEstadoDTO;

/**
 * Servlet implementation class ActualizarUsuarioServlet
 */
@WebServlet(name = "actuausu", urlPatterns = { "/actuausu" })
public class ActualizarUsuarioServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ActualizarUsuarioServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
            UsuarioDTO u = (UsuarioDTO) request.getSession().getAttribute("u");

		
		// leer los campos del formulario (Param)
        
		String nombre = request.getParameter("nombre");
		String apellido = request.getParameter("apellido");
		String usuario = request.getParameter("usuario");
		String correo = request.getParameter("correo");
		String clave = request.getParameter("clave");
		String fnacim = request.getParameter("fnacim");
		String celular = request.getParameter("celular");
		
		
		
		// actualiza los datos actuales con los nuevos!!!
		u.setNombre(nombre);
		u.setApellido(apellido);
		u.setUsuario(usuario);
		u.setCorreo(correo);
		u.setClave(clave);
		u.setFnacim(fnacim);
		u.setCelular(celular);
		
		
		System.out.println("Datos actualizados: " + u);
		
		
		// llamar al método de mantenimiento
		boolean ok = new UsuarioDAOImpl().actualizarUsuario(u);
		
		// enviar enviar mensaje de éxito o error
		 if (ok) {
		        response.sendRedirect("listusu");
		    } else {
		        request.setAttribute("error", "Error al actualizar");
		        request.getRequestDispatcher("Actualiza.jsp")
		               .forward(request, response);
		    }
		}

}
