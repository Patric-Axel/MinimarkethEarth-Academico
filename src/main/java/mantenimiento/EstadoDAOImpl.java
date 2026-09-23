package mantenimiento;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import conexion.MySQLConexion;
import Interfaces.EstadoDAO;
import model.EstadoDTO;

public class EstadoDAOImpl implements EstadoDAO{
	
	public List<EstadoDTO> listarEstadosProductos() {
		List<EstadoDTO> lst = new ArrayList<>();
        String sql = "SELECT * FROM tb_estados";
        try (Connection con = MySQLConexion.getConexion();
             PreparedStatement ps = con.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                EstadoDTO e = new EstadoDTO(
                    rs.getInt("idestado"),
                    rs.getString("descripcion")
                );
                lst.add(e);
            }
        } catch (SQLException e) { e.printStackTrace(); }
        return lst;
	}

	
}
