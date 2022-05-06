import java.util.Vector;

public class Carrera {

  private String Nombre;
  Vector<Catedra> catedras;

  public Carrera(String name) {
    catedras = new Vector<>();
    Nombre = name;
  }

  public Integer ListarEgresados() {
    Integer contador = 0;
    for (Catedra I : catedras) {
        System.out.println(">> Catedra " + I.verNombre());
      contador += I.listarEgresados();
    }
    return contador;
  }

  void agregarCatedras(Catedra catedra) {
    catedras.add(catedra);
  }

  String verNombre() {
    return Nombre;
  }
}
