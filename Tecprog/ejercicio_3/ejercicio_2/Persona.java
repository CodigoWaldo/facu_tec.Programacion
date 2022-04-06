package ejercicio_2;

import java.util.Calendar;

public class Persona {
	private String nombre, apellido;
	Calendar calendar = Calendar.getInstance();
	Calendar calendarActual = Calendar.getInstance();
	private String pass_hash;

	public Persona(String nombre, String apellido, Integer day, Integer month, Integer year,String pass) {
		this.nombre = nombre;
		this.apellido = apellido;
		calendar.set(year, month, day);
		this.pass_hash = StringMD.getStringMessageDigest(pass,StringMD.SHA256);
	}

	private Integer calcularEdad() {
		Integer edad = 0;

		Integer añoPersona = calendar.get(Calendar.YEAR);
		Integer añoActual = calendarActual.get(Calendar.YEAR);

		Integer mesPersona = calendar.get(Calendar.MONTH);
		Integer mesActual = calendarActual.get(Calendar.MONTH);
		mesActual++; // el mes se indexa de 0 a 11, se le suma uno para arrancar de 1 a 12.

		Integer diaPersona = calendar.get(Calendar.DATE);
		Integer diaActual = calendarActual.get(Calendar.DATE);

		edad = (añoActual - añoPersona);

		if (mesActual < mesPersona) {
			return edad - 1;
		} else if (mesActual > mesPersona) {
			return edad;
		} else {
			if (diaPersona <= diaActual) {
				return edad;
			} else {
				return edad - 1;
			}
		}
	}

	public void mostrar() {
		System.out.println(this.nombre + ", " + this.apellido + ": " + this.calcularEdad() + " años.");
	}

	public Boolean verificar(String pass) {
		String aux = StringMD.getStringMessageDigest(pass, StringMD.SHA256);
		System.out.println(aux);
		System.out.println(this.pass_hash);
		return (aux.equals(pass_hash));
	}

}
