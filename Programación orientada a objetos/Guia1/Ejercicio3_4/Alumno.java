package Ejercicio3_4;
import java.util.Date;

public class Alumno {
	private Persona oPersona;
	private Carrera oCarreara;	//no usada.
	private Date fechaInscripcion;

	public Alumno(Persona oPersona, Carrera oCarreara, Date fechaInscripcion) {
		super();
		this.oPersona = oPersona;
		this.oCarreara = oCarreara;		
		this.fechaInscripcion = fechaInscripcion;
	}

	public void to_string() {
		System.out.println(oPersona.toString()+" - "+fechaInscripcion);
	}

	public void mostrarCarrerasYAlumnos() {

	}
}
