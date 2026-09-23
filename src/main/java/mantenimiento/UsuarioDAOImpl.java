package mantenimiento;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Interfaces.UsuarioDAO;
import conexion.MySQLConexion;
import model.UsuarioDTO;
import model.UsuarioTipoEstadoDTO;

public class UsuarioDAOImpl implements UsuarioDAO {

	@Override
	public boolean registrarUsuarioTipoEstado(UsuarioTipoEstadoDTO user) {
		String sql = "INSERT INTO tb_usuarios (nombre, apellido, usuario, correo, clave, fnacim, celular, tipo, estado) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
		try (Connection con = MySQLConexion.getConexion();
				// prepara la sentencia a ejecutar
				PreparedStatement ps = con.prepareStatement(sql)) {
			// agregamos los campos a utilizar en los ?
			ps.setString(1, user.getNombre()); // el param 1 (?) será una cadena con ..
			ps.setString(2, user.getApellido());
			ps.setString(3, user.getUsuario());
			ps.setString(4, user.getCorreo());
			ps.setString(5, user.getClave());
			ps.setString(6, user.getFnacim());
			ps.setString(7, user.getCelular());
			ps.setString(8, user.getTipo());
			ps.setString(9, user.getEstado());
			// ejecutar la sentencia y devolver V o F
			return ps.executeUpdate() > 0;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}	
	
	@Override
	public UsuarioDTO validarUsuario(String usuario, String clave) {
		//SQL > DEFINE LA SENTENCIA A EJECUTAR EN UNA CADENA
		//SQL > DEFINE LA SENTENCIA A EJECUTAR EN UNA CADENA
				UsuarioDTO u = null;        
				// String sql = "SELECT * FROM tb_usuarios where usuario = '"+ usuario +"' and clave = '" + clave + "'";
				String sql = "SELECT * FROM tb_usuarios where usuario = ? and clave = ?";
		        try (Connection con = MySQLConexion.getConexion();
		             PreparedStatement ps = con.prepareStatement(sql); ) {
		        	ps.setString(1, usuario);
		        	ps.setString(2, clave);
		        	ResultSet rs = ps.executeQuery();
		            if (rs.next()) {
		                u = new UsuarioDTO(
		                		rs.getInt("codigo"), 
		                		rs.getString("nombre"), 
		                		rs.getString("apellido"), 
		                		rs.getString("usuario"),
		                		rs.getString("correo"),
		                		rs.getString("clave"), 
		                		rs.getString("fnacim"), 
		                		rs.getString("celular"),
		                		rs.getInt("tipo"), 
		                		rs.getInt("estado")
		                );
		            }
		        } catch (SQLException e) { e.printStackTrace(); }
		        return u;
	}
	
	public List<UsuarioDTO> listarClientes() {
		List<UsuarioDTO> lista = new ArrayList<>();
        String sql = "SELECT * FROM tb_usuarios";
        try (Connection con = MySQLConexion.getConexion();
             PreparedStatement ps = con.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {
        	// leer el resultado de la consulta en MySQL
            while (rs.next()) {
                UsuarioDTO p = new UsuarioDTO(
                    rs.getInt("codigo"),
                    rs.getString("nombre"),
                    rs.getString("apellido"),
                    rs.getString("usuario"),
                    rs.getString("correo"),
                    rs.getString("clave"),
                    rs.getString("fnacim"),
                    rs.getString("celular"),
                    rs.getInt("tipo"),
                    rs.getInt("estado")
                );
                lista.add(p);
            }
        } catch (SQLException e) { e.printStackTrace(); }
        return lista;

	}

	@Override
	public boolean actualizarUsuario(UsuarioDTO nuevo) {
		String sql = "UPDATE tb_usuarios SET nombre = ?, apellido = ?, "
				+ " usuario = ?, correo = ?,	clave = ?, fnacim = ?, celular = ?  where codigo = ?";
		try (Connection con = MySQLConexion.getConexion();
				 //prepara la sentencia a ejecutar
				PreparedStatement ps = con.prepareStatement(sql)) {
			 //agregamos los campos a utilizar en los ?
			ps.setString(1, nuevo.getNombre()); 
			ps.setString(2, nuevo.getApellido());
			ps.setString(3, nuevo.getUsuario());
			ps.setString(4, nuevo.getCorreo());
			ps.setString(5, nuevo.getClave());
			ps.setString(6, nuevo.getFnacim());
			ps.setString(7, nuevo.getCelular());
			ps.setInt(8, nuevo.getCodigo());

			return ps.executeUpdate() > 0;
		} catch (SQLException e) {
			e.printStackTrace();
		return false;
		}
	}
	
	public boolean actualizarUsuarioTipoEstado(UsuarioTipoEstadoDTO nuevo) {
		String sql = "UPDATE tb_usuarios SET nombre = ?, apellido = ?, "
				+ " usuario = ?, correo = ?,	clave = ?, fnacim = ?, celular = ?, tipo = ?, estado = ?,  where codigo = ?";
		try (Connection con = MySQLConexion.getConexion();
				// prepara la sentencia a ejecutar
				PreparedStatement ps = con.prepareStatement(sql)) {
			// agregamos los campos a utilizar en los ?
			ps.setString(1, nuevo.getNombre()); 
			ps.setString(2, nuevo.getApellido());
			ps.setString(3, nuevo.getUsuario());
			ps.setString(4, nuevo.getCorreo());
			ps.setString(5, nuevo.getClave());
			ps.setString(6, nuevo.getFnacim());
			ps.setString(7, nuevo.getCelular());
			ps.setString(8, nuevo.getTipo());
			ps.setString(9, nuevo.getEstado());
			ps.setInt(10, nuevo.getCodigo());

			return ps.executeUpdate() > 0;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}
	
	
	public List<UsuarioTipoEstadoDTO> listarUsuariosTipoEstado() {
		List<UsuarioTipoEstadoDTO> lista = new ArrayList<>();
        String sql = "{call sp_vista_usu_tip}";
        try (Connection con = MySQLConexion.getConexion();
             PreparedStatement ps = con.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {
        	// leer el resultado de la consulta en MySQL
            while (rs.next()) {
                UsuarioTipoEstadoDTO p = new UsuarioTipoEstadoDTO(
                		rs.getInt("codigo"), 
                		rs.getString("nombre"),
                		rs.getString("apellido"), 
                		rs.getString("usuario"),                 		 
                		rs.getString("correo"),
                		rs.getString("clave"),
                		rs.getString("fnacim"),
                		rs.getString("celular"),
                		rs.getString("tipo"),
                		rs.getString("estado"));
                		
                lista.add(p);
            }
        } catch (SQLException e) { e.printStackTrace(); }
        return lista;
	}

	@Override
	public boolean registrarUsuario(UsuarioDTO user) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean eliminarUsuario(String codigo) {
	    String sql = "DELETE FROM tb_usuarios WHERE codigo = ?";
	    try (Connection con = MySQLConexion.getConexion();
	         PreparedStatement ps = con.prepareStatement(sql)) {

	        ps.setString(1, codigo);
	        return ps.executeUpdate() > 0;

	    } catch (Exception e) {
	        e.printStackTrace();
	        return false;
	    }
	}
	
}
