package mantenimiento;

import java.sql.Connection;
import java.sql.PreparedStatement;

import conexion.MySQLConexion;
import Interfaces.DetBoletaDAO;



public class DetBoletaDAOImpl implements DetBoletaDAO {

    @Override
    public void registrar(String numBol, String idprod, int cantidad, double precio) {

        String sql = """
            INSERT INTO tb_det_boleta
            (num_bol, idprod, cantidad, preciovta)
            VALUES (?, ?, ?, ?)
        """;

        try (
            Connection con = MySQLConexion.getConexion();
            PreparedStatement ps = con.prepareStatement(sql)
        ) {
            ps.setString(1, numBol);
            ps.setString(2, idprod);
            ps.setInt(3, cantidad);
            ps.setDouble(4, precio);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
