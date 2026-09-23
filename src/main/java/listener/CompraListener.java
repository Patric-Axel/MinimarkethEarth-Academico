package listener;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;
import java.util.ArrayList;

@WebListener
public class CompraListener implements HttpSessionListener {

    @Override
    public void sessionCreated(HttpSessionEvent se) {

        System.out.println("Sesión creada - canasta inicializada");

        se.getSession().setAttribute("canasta", new ArrayList<>());
        se.getSession().setAttribute("subTotal", 0.0);
        se.getSession().setAttribute("cantProductos", 0);
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent se) {
        System.out.println("Sesión destruida");
    }
}

