package ejercicio_3;

import java.util.ArrayList;

public class Carrera {
	private String nombre;
	private ArrayList<Alumno> alumnos;

	public Carrera(String name) {
		this.nombre = name;
		alumnos = new ArrayList<Alumno>();
	}

	public void CargarAlumno(Alumno alum) {
		alumnos.add(alum);
	}

	public void mostrarAlumnos() {
		for (Integer i = 0; i < this.alumnos.size(); i++) {
			System.out.println(this.alumnos.get(i).persona + " - " + this.alumnos.get(i).toString());
		}
	}

	public String mostrarNombre() {
		return this.nombre;
	}
}
