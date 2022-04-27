import java.util.Vector;

public class Facultad {

  private String name;
  Vector<Carrera> carrera;

  public Facultad(String name) {
    this.name = name;
    carrera = new Vector<>();
  }

  String getNombre() {
    return name;
  }

  void listarEgresados() {
    Integer contador = 0;
    for (Carrera I : carrera) {
      System.out.println(">> Carrera " + I.verNombre());
      contador += I.ListarEgresados();
    }
    System.out.println("_____________");
    System.out.print("alumnos Egresados: " + Integer.toString(contador));
  }

  void agregarCarrera(Carrera carrera) {
    this.carrera.add(carrera);
  }
}
