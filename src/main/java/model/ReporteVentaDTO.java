package model;

import lombok.Data;

@Data
public class ReporteVentaDTO {

    private String numBoleta;
    private String fecha;
    private String cliente;
    private String producto;
    private int cantidad;
    private double precio;
    private double subtotal;
}
