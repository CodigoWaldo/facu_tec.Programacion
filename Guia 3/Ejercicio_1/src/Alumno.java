import java.util.Date;

public class Alumno {

  private Date dateIngreso;
  private Date dateEgreso;
  private Persona iPersona;

  public Alumno(String name, String surName, Integer DNI, Date fechaIngreso) {
    iPersona = new Persona(name, surName, DNI);
    dateIngreso = new Date();
    dateIngreso = fechaIngreso;
  }

  public Date getFechaIngreso() {
    return this.dateIngreso;
  }

  void SetFechaEgreso(Date fechaEgreso) {
    dateEgreso = fechaEgreso;
  }

  public Date getFechaEgreso() {
    return this.dateEgreso;
  }

  public String verNombreAlumno() {
    return iPersona.getNombre();
  }

  public String verApellidoAlumno() {
    return iPersona.getApellido();
  }

  public Integer verDNIAlumno() {
    return iPersona.getDNI();
  }
}
