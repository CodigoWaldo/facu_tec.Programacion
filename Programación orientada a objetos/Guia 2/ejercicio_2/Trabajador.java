package ejercicio_2;
import java.util.Calendar;

public abstract class Trabajador {

	private String nombre, apellido, direccion;
	private Integer dni;
	
	public Trabajador(String nombre, String apellido, String direccion, Integer dni) {
		this.nombre = nombre;
		this.apellido = apellido;
		this.direccion = direccion;
		this.dni = dni;
	}

	public abstract Float calcularSueldo(Calendar periodo);
	
	public abstract String mostrarTipo();	
	
	public String mostrarNombre() {
		return apellido.toUpperCase() + ", " + nombre.toUpperCase();
	}

	public String mostrarDNI() {
		String DNI=String.valueOf(dni);		
		return DNI.toUpperCase();
	}
	public String mostrarDireccion() {		
		return direccion;
	}
	
}