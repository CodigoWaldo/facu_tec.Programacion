package ejercicio_3;

public class Principal {

	public static void main(String[] args) {

		Facultad facultad_FICH = new Facultad("FICH");

		// --------------- carga de carrera 1
		Carrera carrera_IFO = new Carrera("Ingenieria en informática");
		facultad_FICH.CargarCarrera(carrera_IFO);

		// --------------- carga alumno 1
		Persona persona_1 = new Persona("Alumno1", 11111111);
		persona_1.cargarNacimiento(11, 11, 1990);
		Alumno alumno_1 = new Alumno(persona_1, carrera_IFO);
		alumno_1.setFecha(10, 12, 2008);
		carrera_IFO.CargarAlumno(alumno_1);

		// --------------- carga alumno 2
		Persona persona_2 = new Persona("Alumno2", 22222222);
		persona_2.cargarNacimiento(12, 12, 1990);
		Alumno alumno_2 = new Alumno(persona_2, carrera_IFO);
		alumno_2.setFecha(11, 12, 2008);
		carrera_IFO.CargarAlumno(alumno_2);

		// --------------- carga de carrera 2
		Carrera carrera_IRI = new Carrera("Ingenieria en Recursos Hídricos");
		facultad_FICH.CargarCarrera(carrera_IRI);

		// --------------- impresión en consola
		System.out.println("Facultad: " + facultad_FICH.toString());
		facultad_FICH.mostrarCarrerasyAlumnos();
		
	}
}
