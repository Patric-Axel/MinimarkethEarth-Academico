package Interfaces;

import java.util.List;


import model.UsuarioDTO;
import model.UsuarioTipoEstadoDTO;

public interface UsuarioDAO {

	public boolean registrarUsuario(UsuarioDTO user);

	public UsuarioDTO validarUsuario(String usuario, String clave);
	
	public boolean actualizarUsuario(UsuarioDTO nuevo);
	
	public boolean actualizarUsuarioTipoEstado(UsuarioTipoEstadoDTO nuevo);
	
	public List<UsuarioDTO> listarClientes();
	
	public List<UsuarioTipoEstadoDTO> listarUsuariosTipoEstado();
	
	public boolean registrarUsuarioTipoEstado(UsuarioTipoEstadoDTO user);
	
	public boolean eliminarUsuario(String codigo);
}
