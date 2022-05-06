import java.util.Date;
import java.util.Vector;

public class Comision {

  private Vector<Alumno> alumnos; // 0 o varios alumnos en la comision
  private Docente docenteResponsable; // un unico docente responsable
  private char letraID = 'Z';
  private Date fechaDesde;

  public Comision(
    String name,
    String ape,
    Integer dni,
    Integer legajo,
    char ID,
    Date fechaDesde
  ) {
    docenteResponsable = new Docente(name, ape, dni, legajo);
    this.fechaDesde = fechaDesde;
    letraID = ID;
    alumnos = new Vector<>();
  }

  public void agregarAlumno(Alumno newAlumno) {
    alumnos.add(newAlumno);
  }

  public Docente getDocenteResponsable() {
    return this.docenteResponsable;
  }

  public void setDocenteResponsable(Docente docenteResponsable) {
    this.docenteResponsable = docenteResponsable;
  }

  public char getLetraID() {
    return this.letraID;
  }

  public Date getFechaDesde() {
    return this.fechaDesde;
  }

  public Integer listarEgresados() {
    Integer contador = 0;
    for (Alumno I : alumnos) {
      if (I.getFechaEgreso() != null) {
        contador++;
        System.out.println(I.verNombreAlumno() +" "+ I.verApellidoAlumno());
      }     
    }
    System.out.println("");
    return contador; //retorna la cantidad de egresados de la comision analizada
  }
}
