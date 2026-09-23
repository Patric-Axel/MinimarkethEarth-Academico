package mantenimiento;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import conexion.MySQLConexion;
import Interfaces.CategoriaDAO;
import model.CategoriaDTO;

public class CategoriaDAOImpl implements CategoriaDAO{
	public List<CategoriaDTO> listarCategorias() {
		List<CategoriaDTO> lista = new ArrayList<>();
        String sql = "SELECT * FROM tb_categorias";
        try (Connection con = MySQLConexion.getConexion();
             PreparedStatement ps = con.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                CategoriaDTO c = new CategoriaDTO(
                    rs.getInt("idcategoria"),
                    rs.getString("descripcion")
                );
                lista.add(c);
            }
        } catch (SQLException e) { e.printStackTrace(); }
        return lista;

	}

}
