package model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ArticuloDTO {

    private String idprod;
    private String descripcion;
    private int stock;
    private double precio;
    private int idcategoria;
    private int estado;

}
