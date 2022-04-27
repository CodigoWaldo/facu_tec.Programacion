import java.util.Vector;

public class Catedra {

  String nombre;
  Vector<Comision> comisiones;

  public Catedra(String nombre) {
    comisiones = new Vector<Comision>();
    this.nombre = nombre;
  }

  public Integer listarEgresados() {
    Integer contador = 0;
    for (Comision I : comisiones) {
      System.out.println("-comision: " + I.getLetraID());
      contador += I.listarEgresados();
    }
    return contador; //retorna la cantidad de egresados de todas las comisiones
  }

  String verNombre(){
      return nombre;
  }

  void agregarComision(Comision com) {
    comisiones.add(com);
  }
}
