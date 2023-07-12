package ejercicio_2;

import java.util.Calendar;
import java.util.Vector;

public class Empresa {

	private String nombre;
	private Vector<Trabajador> myTrabajador;

	public Empresa(String nombre) {
		this.nombre = nombre;
		this.myTrabajador = new Vector<Trabajador>();
	}

	public void calcularRemuneraciones(Calendar periodo) {

		for (Trabajador oTrabajador : myTrabajador) {
			System.out.println(oTrabajador.mostrarNombre() + '.');
			System.out.println("Tipo: " + oTrabajador.mostrarTipo());
			System.out.println("DNI: " + oTrabajador.mostrarDNI());
			System.out.println("Dirección: " + oTrabajador.mostrarDireccion());
			System.out.println("Sueldo: " + oTrabajador.calcularSueldo(periodo));
			System.out.println("------");
		}
	}

	public String verNombre() {
		return nombre;
	}

	public void addEmpleado(Trabajador trabajador) {
		myTrabajador.add(trabajador);
	}

}