package mantenimiento;

import java.sql.*;

import conexion.MySQLConexion;

public class BoletaDAOImplement {

	public String generarNumeroBoleta() {

		String sql = "SELECT LPAD(IFNULL(MAX(num_bol)+1,1),5,'0') FROM tb_cab_boleta";
		String num = "00001";

		try (Connection con = MySQLConexion.getConexion();
		     PreparedStatement ps = con.prepareStatement(sql);
		     ResultSet rs = ps.executeQuery()) {

			if (rs.next()) {
				num = rs.getString(1);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return num;
	}

	public void registrarCabecera(String num, Date fecha, int cliente) {

		String sql = "INSERT INTO tb_cab_boleta VALUES (?,?,?)";

		try (Connection con = MySQLConexion.getConexion();
		     PreparedStatement ps = con.prepareStatement(sql)) {

			ps.setString(1, num);
			ps.setDate(2, fecha);
			ps.setInt(3, cliente);
			ps.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void registrarDetalle(String num, String prod, int cant, double precio) {

		String sql = "INSERT INTO tb_det_boleta VALUES (?,?,?,?)";

		try (Connection con = MySQLConexion.getConexion();
		     PreparedStatement ps = con.prepareStatement(sql)) {

			ps.setString(1, num);
			ps.setString(2, prod);
			ps.setInt(3, cant);
			ps.setDouble(4, precio);
			ps.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
