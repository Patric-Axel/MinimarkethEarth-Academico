package servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mantenimiento.ArticuloDAOImplement;
import model.ArticuloDTO;

@WebServlet("/limpieza")
public class LimpiezaServlet extends HttpServlet {
	
       
    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
    	
    	 List<ArticuloDTO> lista =
                 new ArticuloDAOImplement().listarPorCategoria(4); // 4 = limpieza

         request.setAttribute("articulo", lista);
         request.getRequestDispatcher("./cliente/limpieza.jsp").forward(request, response);
     }
    
		
}