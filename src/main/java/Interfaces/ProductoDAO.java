package Interfaces;

import java.util.List;

import model.ProductoCategoriaEstadoDTO;
import model.ProductoDTO;

public interface ProductoDAO {
	// registrar
		public boolean registrar(ProductoDTO nuevo); //REALIZADO
		
		// actualiza 
		public boolean actualizar(ProductoDTO p);
		
		// eliminar
		public boolean eliminar(String codigo);
		
		// listar todos los Productos
		public List<ProductoDTO> listarProductos(); //REALIZADO
		
		// buscar un Producto
		public ProductoDTO buscarPorNombre(String nombre);
		
		//mostrar destacados solo 3
		public List<ProductoDTO> destacados(); 
		
		// método para buscar un Producto según su código
		public ProductoDTO buscarPorId(String codigo); //REALIZADO
		
		// listar todos los Productos incluyendo el nombre de Categoría
		public List<ProductoCategoriaEstadoDTO> listarProductosCategoriasEstados(); //REALIZADO
		
}
