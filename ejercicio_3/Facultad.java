package ejercicio_3;

import java.util.ArrayList;
import java.util.Collection;

public class Facultad {
	private String nombre;
	private Collection<Carrera> carreras;

	public Facultad(String nombre) {
		this.nombre = nombre;
		carreras = new ArrayList<Carrera>();
	}

	public String toString() {
		return nombre;
	}

	public void CargarCarrera(Carrera car) {
		carreras.add(car);
	}

	public void mostrarCarrerasyAlumnos() {

		for (Carrera aux : this.carreras) {

			System.out.print("Carrera: ");
			System.out.println(aux.mostrarNombre());
			System.out.println("Alumnos: ");
			aux.mostrarAlumnos();
		}

	}

}
