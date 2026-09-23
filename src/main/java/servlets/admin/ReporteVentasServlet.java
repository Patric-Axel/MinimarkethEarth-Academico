package servlets.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import Interfaces.ReporteVentasDAO;
import mantenimiento.ReporteVentasDAOImpl;
import model.ReporteVentaDTO;

@WebServlet("/reporteVentas")
public class ReporteVentasServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        ReporteVentasDAO dao = new ReporteVentasDAOImpl();
        List<ReporteVentaDTO> lista = dao.listarVentas();

        request.setAttribute("lstVentas", lista);
        request.getRequestDispatcher("/admin/reporteVentas.jsp")
               .forward(request, response);
    }
}
