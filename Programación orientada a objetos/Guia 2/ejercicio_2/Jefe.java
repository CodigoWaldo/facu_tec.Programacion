package ejercicio_2;

import java.util.Calendar;


public class Jefe extends Trabajador {

	private Float sueldo;

	public Float calcularSueldo(Calendar periodo) {
		return sueldo;
	}

	public Jefe(Float sueldo, String nombre, String apellido, String direccion, Integer dni) {
		super(nombre, apellido, direccion, dni);
		this.sueldo = sueldo;
	}

	public String mostrarTipo() {
		return "JEFE";
	}
	
	

}