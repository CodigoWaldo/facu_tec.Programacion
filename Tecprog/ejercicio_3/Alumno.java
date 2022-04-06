package ejercicio_3;

import java.util.Calendar;

public class Alumno {
	private Calendar fecha_inscripcion = Calendar.getInstance();;
	public Persona persona;
	public Carrera carrera;

	public Alumno(Persona persona, Carrera carrera) {
		this.persona = persona;
		this.carrera = carrera;
	}

	public void setFecha(Integer day, Integer month, Integer anno) {
		month--;
		fecha_inscripcion.set(Calendar.YEAR, anno);
		fecha_inscripcion.set(Calendar.MONTH, month);
		fecha_inscripcion.set(Calendar.DAY_OF_MONTH, day);

	}

	public String toString() {
		String fechaInscripcion = String.valueOf(fecha_inscripcion.get(Calendar.DAY_OF_MONTH));
		fechaInscripcion += "/" + String.valueOf(fecha_inscripcion.get(Calendar.MONTH) + 1);
		fechaInscripcion += "/" + String.valueOf(fecha_inscripcion.get(Calendar.YEAR));
		return fechaInscripcion;
	}

}
