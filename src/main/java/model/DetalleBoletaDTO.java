package model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class DetalleBoletaDTO {

	private String idprod;     // código producto
	private String descripcion;
	private double precio;
	private int cantidad;
	private double subtotal;
}
