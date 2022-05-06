
import java.util.Vector;
import java.util.Calendar;

public class Hospedaje {

  private Integer capacidad;
  private String direccion;
  private Anfitrion anfitrion;
  private Vector<Alquiler> alquileres;

  public Hospedaje(Integer capacidad, String direccion) {
    alquileres = new Vector<>();
    this.capacidad = capacidad;
    this.direccion = direccion;
  }

  public Integer getCapacidad() {
    return this.capacidad;
  }

  public Anfitrion getAnfitrion() {
    return this.anfitrion;
  }

  public void setAnfitrion(Anfitrion anfitrion) {
    this.anfitrion = anfitrion;
  }

  public void setCapacidad(Integer capacidad) {
    this.capacidad = capacidad;
  }

  public void añadirAlquiler(Alquiler alquier) {
    alquileres.add(alquier);
  }

  public void verAlquieresPorAño(short anno) {
    for (Alquiler I : alquileres) {
      Integer aux = (int) anno;
      Calendar Calendaraux = Calendar.getInstance();
      Calendaraux =I.getDesde();
      Integer aux2 = Calendaraux.get(Calendaraux.YEAR);
      if (aux == aux2) {

      }
    }
  }

  public String getDireccion() {
    return this.direccion;
  }

  public void setDireccion(String direccion) {
    this.direccion = direccion;
  }
}
