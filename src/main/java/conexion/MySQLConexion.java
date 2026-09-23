package conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MySQLConexion {

    private static final String URL =
        "jdbc:mysql://localhost:3306/tiendaearth3?useSSL=false&serverTimezone=UTC";

    private static final String USER = "root";
    private static final String PASSWORD = "mysql"; 

    public static Connection getConexion() {
        Connection con = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(URL, USER, PASSWORD);
        } catch (ClassNotFoundException e) {
            System.out.println("ERROR: Driver MySQL no encontrado");
        } catch (SQLException e) {
            System.out.println("ERROR de conexión: " + e.getMessage());
        }
        return con;
    }
}
