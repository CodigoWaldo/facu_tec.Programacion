package ejercicio_2;

import java.util.Calendar;


public class Mensualizado extends Trabajador {

	private Jefe myJefe; // el trabajador mensualizado tiene un jefe asociado.
	private Categoria myCategoria;

	public Float calcularSueldo(Calendar periodo) {
		return myCategoria.getSueldo();
	}

	public Mensualizado(Jefe myJefe, Categoria myCategoria, String nombre, String apellido, String direccion,
			Integer dni) {
		super(nombre, apellido, direccion, dni);
		this.myJefe = myJefe;
		this.myCategoria = myCategoria;
	}

	public String mostrarTipo() {
		return "MENSUALIZADO";
	}

	public String mostrarNombre() {
		return myJefe.mostrarNombre();
	}

}