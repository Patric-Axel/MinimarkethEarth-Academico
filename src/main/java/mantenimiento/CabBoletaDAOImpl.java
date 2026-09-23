package mantenimiento;

import java.sql.Connection;
import java.sql.PreparedStatement;

import conexion.MySQLConexion;
import Interfaces.CabBoletaDAO;

public class CabBoletaDAOImpl implements CabBoletaDAO {

    @Override
    public void registrar(String numBol, int codCliente) {

        String sql = """
            INSERT INTO tb_cab_boleta (num_bol, fch_bol, cod_cliente)
            VALUES (?, CURDATE(), ?)
        """;

        try (
            Connection con = MySQLConexion.getConexion();
            PreparedStatement ps = con.prepareStatement(sql)
        ) {
            ps.setString(1, numBol);
            ps.setInt(2, codCliente);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
