package Ejercicio3_4;

import java.util.List;
import java.util.ArrayList;

public class Carrera {
	private List<Persona> lPersona; //no usada.
	private List<Alumno> lAlumno;
	private Facultad oFacultad; //no usada.
	private String nombre;

	public Carrera(Facultad oFacultad, String nombre) {
		super();
		this.lAlumno = new ArrayList<>();
		this.oFacultad = oFacultad;
		this.nombre = nombre;
	}

	public String to_string() {
		return nombre;
	};

	public void setAlum(Alumno oAlumno) {
		lAlumno.add(oAlumno);
	}

	public void mostrarAlumnos() {
		for (int i = 0; i < lAlumno.size(); i++) {
			lAlumno.get(i).to_string();
		}
	}

}