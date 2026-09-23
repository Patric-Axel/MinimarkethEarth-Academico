package servlets.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mantenimiento.UsuarioDAOImpl;
import model.UsuarioTipoEstadoDTO;

/**
 * Servlet implementation class RegistroUsuario
 */
@WebServlet(name = "regusu", urlPatterns = { "/regusu" })
public class RegistroUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistroUsuario() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
try {
			//REGISTRAR USUARIO
			//LEEMOS LOS DATOS QUE FUERON INGRESADOS EN EL FORMULARIO
			String nombre = request.getParameter("nombre");
			String apellido = request.getParameter("apellido");
			String Usuario = request.getParameter("usuario");
			String correo = request.getParameter("correo");
			String clave = request.getParameter("clave");
			String fnacim = request.getParameter("fnacim");
			String celular = request.getParameter("celular");
			String tipo = request.getParameter("tipo");
			String estado = request.getParameter("estado");
			
			//SE CREA, CREAMOS UN NUEVO OBJETO (USUARIO)
			UsuarioTipoEstadoDTO user = new UsuarioTipoEstadoDTO();
			
			user.setNombre(nombre);
			user.setApellido(apellido);
			user.setUsuario(Usuario);
			user.setCorreo(correo);
			user.setClave(clave);
			user.setFnacim(fnacim);
			user.setCelular(celular);
			user.setTipo(tipo);
			user.setEstado(estado);
			
			//llamar a la implementacion y metodo para guardar el resultado
			boolean ok = new UsuarioDAOImpl().registrarUsuarioTipoEstado(user);
			if (ok) {
				//enviar mensaje
				response.sendRedirect("listusu");
			} else {
				request.setAttribute("mensaje", "<script>Swal.fire({title: 'Aviso!',text: 'ERROR:!',icon: 'error'});</script>");
				request.getRequestDispatcher("registro.jsp").forward(request, response);
			}
			
		} catch (Exception e) {
			request.setAttribute("mensaje", "<script>Swal.fire({title: 'Aviso!',text: 'ERROR:!',icon: 'error'});</script>");
			request.getRequestDispatcher("registro.jsp").forward(request, response);
		}
		
		}

}
