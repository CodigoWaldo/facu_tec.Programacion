import java.util.Date;

public class App {

  static Date fechaIngresoTest;
  static Date fechaEgresoTest;

  static Alumno alum1;
  static Alumno alum2;
  static Alumno alum3;
  static Alumno alum4;


  static Comision comA;
  static Comision comB;

  static Catedra matematica;

  static Facultad fich;

  static Carrera IFO;

  public static void main(String[] args) throws Exception {
    //creacion de los alumnos

    fechaIngresoTest = new Date();
    fechaEgresoTest = new Date();

    alum1 = new Alumno("jijo", "lines", 0123456, fechaIngresoTest);
    alum2 = new Alumno("marcos", "tronco", 0123456, fechaIngresoTest);
    alum3 = new Alumno("eren", "jager", 0123456, fechaIngresoTest);
    alum4 = new Alumno("goku", "usumaki", 0123456, fechaIngresoTest);

    //recibidos

    alum2.SetFechaEgreso(fechaEgresoTest);
    alum3.SetFechaEgreso(fechaEgresoTest);
    alum4.SetFechaEgreso(fechaEgresoTest);

    //creación de las comisiones
    comA =
      new Comision(
        "profesor",
        "jirafales",
        0123456,
        1111111,
        'A',
        fechaIngresoTest
      );

    comB =
      new Comision("señor", "barriga", 0123456, 2222222, 'B', fechaIngresoTest);

    //creacion de la cátedra
    matematica = new Catedra("Matemática");

    //creacion de carrera
    IFO = new Carrera("Informática");

    //creación facultad
    fich = new Facultad("Facultad ing. y ciencias hídricas");

    //asignación de datos
    comA.agregarAlumno(alum4);      
    comA.agregarAlumno(alum3);      
    comB.agregarAlumno(alum2);       
    comB.agregarAlumno(alum1);    

    matematica.agregarComision(comA);
    matematica.agregarComision(comB);

    IFO.agregarCatedras(matematica);

    fich.agregarCarrera(IFO);

    // lectura de recibidos

    System.out.println(fich.getNombre());
    fich.listarEgresados();

  } //FIN main
}
