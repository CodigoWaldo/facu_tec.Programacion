package Ejercicio3_4;

import java.util.ArrayList;
import java.util.List;

public class Facultad {
	private List<Carrera> lCarrera;
	private String nombre;

	public Facultad(String nombre) {
		super();
		this.lCarrera = new ArrayList<Carrera>();
		this.nombre = nombre;
	}

	public void addCarrera(Carrera c) {
		lCarrera.add(c);
	}

	public String to_string() {
		return nombre;
	};

	public void mostrarCarrerasyAlumnos() {		
		System.out.println("Facultad: " + this.to_string());		
		for (int i = 0; i < lCarrera.size(); i++) {
			System.out.println("Carrera: " + lCarrera.get(i).to_string());			
			lCarrera.get(i).mostrarAlumnos();			
		}

	}
}
