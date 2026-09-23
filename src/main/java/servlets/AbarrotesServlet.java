package servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import mantenimiento.ArticuloDAOImplement;
import model.ArticuloDTO;

@WebServlet("/abarrotes")
public class AbarrotesServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

	@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<ArticuloDTO> lista =
                new ArticuloDAOImplement().listarPorCategoria(1); // 1 = Abarrotes

        request.setAttribute("articulo", lista);
        request.getRequestDispatcher("./cliente/abarrotes.jsp").forward(request, response);
    }
}
