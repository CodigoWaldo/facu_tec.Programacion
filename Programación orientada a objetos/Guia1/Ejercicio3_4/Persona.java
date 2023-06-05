package Ejercicio3_4;

import java.util.Date;
import java.util.List;

public class Persona {
	String nombre, documento;
	private Date fechaNacimiento; // no usada.
	List<Carrera> vCarrera;

	public Persona(String nombre, String documento, Date fechaNacimiento) {
		super();
		this.nombre = nombre;
		this.documento = documento;
		this.fechaNacimiento = fechaNacimiento;
	}

	int calcularEdad() {
		return 0;
	}

	public String toString() {
		return nombre;
	}

	// Ejercicio 4
	String password = documento;

	void setPass(String p) {
		password = StringMD.getStringMessageDigest(p, StringMD.SHA256);
	};

	public boolean validarPass(String pass) {
		String Aux = StringMD.getStringMessageDigest(pass, StringMD.SHA256);
		if (password.equals(Aux)) {
			return true;
		} else {
			return false;
		}
	}

}
