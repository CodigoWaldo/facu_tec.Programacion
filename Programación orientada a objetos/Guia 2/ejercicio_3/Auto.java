package ejercicio_3;
public class Auto extends Vehiculo {

  public Auto(
    String marca,
    String modelo,
    Float precio,
    Float kilometraje,
    Pais pais
  ) {
    super(marca, modelo, precio, kilometraje, pais);
  }

  @Override
  public Boolean esAuto() {
    return true;
  }
  
  @Override
  public Float getPrecio() {
    Float fin = this.precio;

    if (pais.getName() != "Argentina") fin += this.pais.getArancel();
    return fin;
  }
}
