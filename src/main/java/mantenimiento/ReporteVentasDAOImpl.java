package mantenimiento;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import conexion.MySQLConexion;
import Interfaces.ReporteVentasDAO;
import model.ReporteVentaDTO;

public class ReporteVentasDAOImpl implements ReporteVentasDAO {

    @Override
    public List<ReporteVentaDTO> listarVentas() {

        List<ReporteVentaDTO> lista = new ArrayList<>();

        String sql =
            "SELECT c.num_bol, c.fch_bol, u.nombre, p.descripcion, " +
            "d.cantidad, d.preciovta, (d.cantidad * d.preciovta) subtotal " +
            "FROM tb_cab_boleta c " +
            "JOIN tb_det_boleta d ON c.num_bol = d.num_bol " +
            "JOIN tb_productos p ON d.idprod = p.idprod " +
            "JOIN tb_usuarios u ON c.cod_cliente = u.codigo " +
            "ORDER BY c.fch_bol DESC";

        try (
            Connection cn = MySQLConexion.getConexion();
            PreparedStatement ps = cn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
        ) {

            while (rs.next()) {
                ReporteVentaDTO r = new ReporteVentaDTO();

                r.setNumBoleta(rs.getString(1));
                r.setFecha(rs.getString(2));
                r.setCliente(rs.getString(3));
                r.setProducto(rs.getString(4));
                r.setCantidad(rs.getInt(5));
                r.setPrecio(rs.getDouble(6));
                r.setSubtotal(rs.getDouble(7));

                lista.add(r);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return lista;
    }
}
