package mantenimiento;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Interfaces.TipoDao;
import conexion.MySQLConexion;
import model.TipoDTO;

public class TipoDAOImpl implements TipoDao {

	public List<TipoDTO> listarTipos() {
		List<TipoDTO> lst = new ArrayList<>();
		String sql = "SELECT * FROM tb_tipos";
		try (Connection con = MySQLConexion.getConexion();
				PreparedStatement ps = con.prepareStatement(sql);
				ResultSet rs = ps.executeQuery()) {
			while (rs.next()) {
				TipoDTO e = new TipoDTO(
						rs.getInt("idtipo"), 
						rs.getString("descripcion"));
				lst.add(e);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return lst;
	}

}
