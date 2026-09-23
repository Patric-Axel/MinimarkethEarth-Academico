package model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class UsuarioDTO {

		private int codigo;
		private String nombre;
		private String apellido;
		private String usuario;
		private String correo;
		private String clave;
		private String fnacim;
		private String celular;
		private int tipo;
		private int estado;
		
		
	}
		