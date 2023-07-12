package ejercicio_3;
public class Motocicleta extends Vehiculo {

  public Motocicleta(
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
