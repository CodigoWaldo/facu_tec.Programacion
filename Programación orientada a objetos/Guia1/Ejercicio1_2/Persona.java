package Ejercicio1_2;

import java.util.Calendar;


public class Persona {
	// Caracteristicas genéricas
	private String nombre, apellido;
	private int dni, telefono;
	private double altura, peso;
	private Calendar nacimiento;

	public Persona(String nombre, String apellido, int i, int j, double d, double e, Calendar nacimiento) {
		super();
		this.nombre = nombre;
		this.apellido = apellido;
		this.dni = i;
		this.telefono = j;
		this.altura = d;
		this.peso = e;
		this.nacimiento = nacimiento;
	}

	void verDatos() {
		// Tell dont ask concepto
		System.out.println(nombre + " " + apellido + "\n");
		System.out.println(dni + "\n");
		System.out.println(telefono + "\n");
		System.out.println(altura + " " + peso + "\n");
	}

	// Ejercicio2
	int calcularEdad() {
		Calendar fechaHoy = Calendar.getInstance(); // fecha de hoy
		int edad = fechaHoy.get(Calendar.YEAR) - nacimiento.get(Calendar.YEAR);
		if(fechaHoy.get(Calendar.MONTH) < nacimiento.get(Calendar.MONTH)){edad=edad-1;} //solo verifica el mes y no el dia			
		return edad;
	}

	void mostrar() {
		System.out.println(nombre + ", " + apellido + ": " + calcularEdad() + " Anios.");
	}

}
