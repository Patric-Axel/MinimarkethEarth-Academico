package mantenimiento;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import conexion.MySQLConexion;
import Interfaces.ArticuloDAO;
import model.ArticuloDTO;

public class ArticuloDAOImplement implements ArticuloDAO {

    @Override
    public List<ArticuloDTO> listarPorCategoria(int idCategoria) {

        List<ArticuloDTO> lista = new ArrayList<>();

        String sql = """
            SELECT idprod, descripcion, stock, precio, idcategoria, estado
            FROM tb_productos
            WHERE idcategoria = ? AND estado = 1
        """;

        try (
            Connection con = MySQLConexion.getConexion();
            PreparedStatement ps = con.prepareStatement(sql);
        ) {

            ps.setInt(1, idCategoria);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                lista.add(new ArticuloDTO(
                    rs.getString(1),
                    rs.getString(2),
                    rs.getInt(3),
                    rs.getDouble(4),
                    rs.getInt(5),
                    rs.getInt(6)
                ));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return lista;
    }
    
    @Override
    public ArticuloDTO buscarPorCodigo(String codigo) {

        ArticuloDTO art = null;

        String sql = "SELECT * FROM tb_productos WHERE idprod = ?";

        try (Connection con = MySQLConexion.getConexion();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, codigo);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                art = new ArticuloDTO(
                    rs.getString("idprod"),
                    rs.getString("descripcion"),
                    rs.getInt("stock"),
                    rs.getDouble("precio"),
                    rs.getInt("idcategoria"),
                    rs.getInt("estado")
                );
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return art;
    }

}
