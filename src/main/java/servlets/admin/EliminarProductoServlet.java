package servlets.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import mantenimiento.ProductoDAOImpl;

@WebServlet("/eliminarProducto")
public class EliminarProductoServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String codigo = request.getParameter("id");

        if (codigo != null) {
            new ProductoDAOImpl().eliminar(codigo);
        }

        response.sendRedirect("listprod");
    }
}
