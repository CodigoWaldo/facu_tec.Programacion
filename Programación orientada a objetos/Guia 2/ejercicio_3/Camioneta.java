package ejercicio_3;
public class Camioneta extends Vehiculo {

  public Camioneta(
    String marca,
    String modelo,
    Float precio,
    Float kilometraje,
    Pais pais
  ) {
    super(marca, modelo, precio, kilometraje, pais);
  }

  @Override
  public Float getPrecio() {
    return this.precio;
  }
}
