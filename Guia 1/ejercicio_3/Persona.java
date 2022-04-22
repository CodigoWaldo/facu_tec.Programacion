package ejercicio_3;

import java.util.Calendar;

public class Persona {
	String nombre;
	Integer doc;
	Calendar fecha = Calendar.getInstance();

	Persona(String nombre, int doc) {
		this.nombre = nombre;
		this.doc = doc;
	}

	void cargarNacimiento(int dd, int mm, int aa) {
		fecha.set(Calendar.YEAR, aa);
		fecha.set(Calendar.MONTH, mm);
		fecha.set(Calendar.DAY_OF_MONTH, dd);
	}

	public Integer calcularEdad() {
		Integer edad = 0;
		Calendar fechaActual = Calendar.getInstance();

		Integer añoPersona = fecha.get(Calendar.YEAR);
		Integer añoActual = fechaActual.get(Calendar.YEAR);

		Integer mesPersona = fecha.get(Calendar.MONTH);
		Integer mesActual = fechaActual.get(Calendar.MONTH);
		mesActual++; // el mes se indexa de 0 a 11, se le suma uno para arrancar de 1 a 12.

		Integer diaPersona = fecha.get(Calendar.DATE);
		Integer diaActual = fechaActual.get(Calendar.DATE);

		edad = (añoActual - añoPersona);

		if (mesActual < mesPersona) {
			return edad -= 1;
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

	public String toString() {
		return nombre;
	}
}
