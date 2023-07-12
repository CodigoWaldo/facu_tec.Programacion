package ejercicio_3;
public abstract class Vehiculo {

  private String marca;
  private String modelo;
  private Float kilometraje;
  private Dueno dueno;

  protected Float precio;
  protected Pais pais;

  public Vehiculo(String marca,String modelo,Float precio,Float kilometraje,Pais pais) {
    this.marca = marca;
    this.modelo = modelo;
    this.precio = precio;
    this.kilometraje = kilometraje;
    this.dueno = null;
    this.pais = pais;
  }

  public void anadirDueno(Dueno dueno) {
    this.dueno = dueno;
  }

  public Boolean tieneDueno() {
    return !(this.dueno == null);
  }

  public Boolean esAuto() {
    return false;
  }

  public String getMarca() {
    return marca;
  }

  public void setMarca(String marca) {
    this.marca = marca;
  }

  public String getModelo() {
    return modelo;
  }

  public void setModelo(String modelo) {
    this.modelo = modelo;
  }

  public abstract Float getPrecio();

  public void setPrecio(Float precio) {
    this.precio = precio;
  }

  public Float getKilometraje() {
    return kilometraje;
  }

  public void setKilometraje(Float kilometraje) {
    this.kilometraje = kilometraje;
  }

  public Dueno getDueno() {
    return this.dueno;
  }

  public void setDueno(Dueno dueno) {
    this.dueno = dueno;
  }

  public Pais getPais(){
    return this.pais;
  }
}
