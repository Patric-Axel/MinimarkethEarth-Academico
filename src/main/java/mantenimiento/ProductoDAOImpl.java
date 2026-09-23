package mantenimiento;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import conexion.MySQLConexion;
import Interfaces.ProductoDAO;
import model.ProductoCategoriaEstadoDTO;
import model.ProductoDTO;

public class ProductoDAOImpl implements ProductoDAO{

	@Override
	public boolean registrar(ProductoDTO nuevo) {
		// sql > define la sentencia a ejecutar en una cadena
				String sql = "INSERT INTO tb_productos VALUES (?, ?, ?, ?, ?, ?)";
				try (Connection con = MySQLConexion.getConexion();
						// prepara la sentencia a ejecutar
						PreparedStatement ps = con.prepareStatement(sql)) {
					// agregamos los campos a utilizar en los ?
					ps.setString(1, nuevo.getIdprod()); // al parám 1 (1°?) le pasamos una cadena con el id
					ps.setString(2, nuevo.getDescripcion());
					ps.setInt(3, nuevo.getStock());
					ps.setDouble(4, nuevo.getPrecio());
					ps.setInt(5, nuevo.getIdcategoria());
					ps.setInt(6, nuevo.getEstado());

					// ejecutar la sentencia y devolver V o F
					return ps.executeUpdate() > 0;
				} catch (SQLException e) {
					e.printStackTrace();
					return false;
				}
	}

	@Override
	public boolean actualizar(ProductoDTO p) {
		String sql = """
		        UPDATE tb_productos
		        SET descripcion=?, stock=?, precio=?,
		            idcategoria=?, estado=?
		        WHERE idprod=?
		    """;

		    try (Connection con = MySQLConexion.getConexion();
		         PreparedStatement ps = con.prepareStatement(sql)) {

		        ps.setString(1, p.getDescripcion());
		        ps.setInt(2, p.getStock());
		        ps.setDouble(3, p.getPrecio());
		        ps.setInt(4, p.getIdcategoria());
		        ps.setInt(5, p.getEstado());
		        ps.setString(6, p.getIdprod());

		        return ps.executeUpdate() > 0;

		    } catch (Exception e) {
		        e.printStackTrace();
		        return false;
		    }
	}

	
	@Override
	public boolean eliminar(String codigo) {
	    String sql = "DELETE FROM tb_productos WHERE idprod = ?";
	    try (Connection con = MySQLConexion.getConexion();
	         PreparedStatement ps = con.prepareStatement(sql)) {

	        ps.setString(1, codigo);
	        return ps.executeUpdate() > 0;

	    } catch (Exception e) {
	        e.printStackTrace();
	        return false;
	    }
	}


	@Override
	public List<ProductoDTO> listarProductos() {
		List<ProductoDTO> lista = new ArrayList<>();
        String sql = "SELECT * FROM tb_productos";
        try (Connection con = MySQLConexion.getConexion();
             PreparedStatement ps = con.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {
        	// leer el resultado de la consulta en MySQL
            while (rs.next()) {
                ProductoDTO p = new ProductoDTO(
                    rs.getString("idprod"),
                    rs.getString("descripcion"),
                    rs.getInt("stock"),
                    rs.getDouble("precio"),
                    rs.getInt("idcategoria"),
                    rs.getInt("estado")
                );
                lista.add(p);
            }
        } catch (SQLException e) { e.printStackTrace(); }
        return lista;

	}

	@Override
	public ProductoDTO buscarPorNombre(String nombre) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ProductoDTO> destacados() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ProductoDTO buscarPorId(String codigo) {
		ProductoDTO p = null;
        String sql = "SELECT * FROM tb_productos where idprod = ?";
        try (Connection con = MySQLConexion.getConexion();
             PreparedStatement ps = con.prepareStatement(sql);
             ) {
        	ps.setString(1, codigo);
        	ResultSet rs = ps.executeQuery();
        	// leer el resultado de la consulta en MySQL
            if (rs.next()) {
                p = new ProductoDTO(
                    rs.getString("idprod"),
                    rs.getString("descripcion"),
                    rs.getInt("stock"),
                    rs.getDouble("precio"),
                    rs.getInt("idcategoria"),
                    rs.getInt("estado")
                );
            }
        } catch (SQLException e) { e.printStackTrace(); }
        return p;
	}

	@Override
	public List<ProductoCategoriaEstadoDTO> listarProductosCategoriasEstados() {
		List<ProductoCategoriaEstadoDTO> lista = new ArrayList<>();
        String sql = "{call sp_vista_prod_cat3}";
        try (Connection con = MySQLConexion.getConexion();
             PreparedStatement ps = con.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {
        	// leer el resultado de la consulta en MySQL
            while (rs.next()) {
                ProductoCategoriaEstadoDTO p = new ProductoCategoriaEstadoDTO(
                		rs.getString("idprod"), 
                		rs.getString("descripcion"),
                		rs.getInt("stock"), 
                		rs.getDouble("precio"),                 		 
                		rs.getString("categoria"),
                		rs.getString("estado"));
                lista.add(p);
            }
        } catch (SQLException e) { e.printStackTrace(); }
        return lista;
	}

}
