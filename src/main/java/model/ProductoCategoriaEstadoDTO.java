package model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
// Entidad que sirve para obtener los datos del JOIN
public class ProductoCategoriaEstadoDTO {
	private String idprod;
	private String descripcion;
	private int stock;
	private double precio;
	private String categoria;
	private String  estado;
}
