package ejercicio_3;
import java.util.Calendar;
import java.util.Vector;

public class Venta {

  Calendar fecha;
  Integer codigoVenta;
  Vector<DetalleDeVenta> det;

  public Venta(Calendar fecha) {
    this.fecha = fecha;
    det = new Vector<DetalleDeVenta>();
  }

  public void anadirDetalleVenta(DetalleDeVenta detalle) {
    this.det.add(detalle);
  }

  public Float montoTotal() {
    float monto = 0f;
    for (DetalleDeVenta it : det) {
      monto += it.valor();
    }
    return monto;
  }

  public Float montPais(Pais pais) {
    float monto = 0f;
    for (DetalleDeVenta it : det) {
      if (it.paisProveniente() == pais) {
        monto += it.valor();
      }
    }
    return monto;
  }

  public Float montPaisConCondicion(Pais pais, Boolean esUsado) {
    float monto = 0f;
    for (DetalleDeVenta it : det) {
      if (it.paisProveniente() == pais && it.esUsado() == esUsado) {
        monto += it.valor();
      }
    }
    return monto;
  }
}
