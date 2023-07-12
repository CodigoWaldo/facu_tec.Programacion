package ejercicio_3;
public class Dueno extends Persona {

  private Integer telefono;

  public Dueno(String nombre, String apellido, Integer telefono) {
    super(nombre, apellido);
    this.telefono = telefono;
  }

  public Integer getTelefono() {
    return telefono;
  }

  public void setTelefono(Integer telefono) {
    this.telefono = telefono;
  }
}
