package Interfaces;

import java.util.List;
import model.ArticuloDTO;

public interface ArticuloDAO {

    List<ArticuloDTO> listarPorCategoria(int idCategoria);
    
    ArticuloDTO buscarPorCodigo(String codigo);
    
    

}
