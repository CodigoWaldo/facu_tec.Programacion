package ejercicio_3;
public class DetalleDeVenta {
    private Float montoFinal;
    private Vehiculo vehiculos;

    public DetalleDeVenta(Vehiculo vehiculos) {
        this.vehiculos = vehiculos;
        montoFinal = vehiculos.getPrecio();
    }
    
    public Float valor(){
        return montoFinal;
    }
    
    public Pais paisProveniente(){
        return vehiculos.getPais();
    }

    public Boolean esUsado(){
        return vehiculos.tieneDueno();
    }
}
