package ejercicio_3;
import java.util.Vector;

public class Concesionaria {

  private String nombre;
  private Integer codigo;
  private String direccion;
  private Vector<Venta> ventas;

  public Concesionaria(String nombre, Integer codigo, String direccion) {
    this.nombre = nombre;
    this.codigo = codigo;
    this.direccion = direccion;
    this.ventas = new Vector<Venta>();
  }

  public String getNombre() {
    return nombre;
  }

  public void setNombre(String nombre) {
    this.nombre = nombre;
  }

  public Integer getCodigo() {
    return codigo;
  }

  public void setCodigo(Integer codigo) {
    this.codigo = codigo;
  }

  public String getDireccion() {
    return direccion;
  }

  public void setDireccion(String direccion) {
    this.direccion = direccion;
  }

  public Vector<Venta> getVentas() {
    return ventas;
  }

  public void setVentas(Vector<Venta> ventas) {
    this.ventas = ventas;
  }

  public void agregarVenta(Venta ven) {
    this.ventas.add(ven);
  }

  public Float ventaPorPais(Pais pais) {
    Float monto = 0.f;
    for (Venta x : ventas) {
      monto += x.montPais(pais);
    }
    return monto;
  }

  public Float ventaPorPaisConCondicion(Pais pais, Boolean esUsado) {
    Float monto = 0.f;
    for (Venta x : ventas) {
      monto += x.montPaisConCondicion(pais, esUsado);
    }
    return monto;
  }
}
