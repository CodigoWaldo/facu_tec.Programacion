import java.util.Calendar;
import java.util.Vector;

public class Alquiler {

  private Float precio;
  private Calendar desde;
  private Calendar hasta;
  private Huesped responsable;
  private Vector<Huesped> grupoHuespedes;
  private Hospedaje hospedaje;
  private AirBnB airBnb;

  public Alquiler(Float precio, Calendar desde, Calendar hasta) {
    this.precio = precio;
    this.desde = desde;
    this.hasta = hasta;
  }

  public Huesped getResponsable() {
    return this.responsable;
  }

  public void setGrupoHuespedes(Huesped aux) {
    grupoHuespedes.add(aux);
  }

  public Vector<Huesped> getGrupoHuespedes() {
    return this.grupoHuespedes;
  }

  public Hospedaje getHospedaje() {
    return this.hospedaje;
  }

  public void setHospedaje(Hospedaje hospedaje) {
    this.hospedaje = hospedaje;
  }

  public AirBnB getAirBnb() {
    return this.airBnb;
  }

  public void setAirBnb(AirBnB airBnb) {
    this.airBnb = airBnb;
  }

  public void setResponsable(Huesped responsable) {
    this.responsable = responsable;
  }

  public Float getPrecio() {
    return this.precio;
  }

  public void setPrecio(Float precio) {
    this.precio = precio;
  }

  public Calendar getDesde() {
    return this.desde;
  }

  public void setDesde(Calendar desde) {
    this.desde = desde;
  }

  public Calendar getHasta() {
    return this.hasta;
  }

  public void setHasta(Calendar hasta) {
    this.hasta = hasta;
  }
}
