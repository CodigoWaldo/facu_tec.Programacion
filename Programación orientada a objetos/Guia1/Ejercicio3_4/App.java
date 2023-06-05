package Ejercicio3_4;

import java.util.Date;
import java.util.Calendar;

public class App {	
	public static void main(String[] args) {
		Facultad oFacultad = new Facultad("FICH");
		Carrera oCarrera = new Carrera(oFacultad, "Ing. Informatica");
		Carrera oCarrera2 = new Carrera(oFacultad, "Ingeniería en Recursos Hídricos");
		// -------------- alumno 1
		Date date1 = new Date();
		Calendar calendar = Calendar.getInstance();
		calendar.set(1990, 11, 11);
		date1 = calendar.getTime();
		Persona oPersona1 = new Persona("alumno1", "111111", date1);
		Date date1A = new Date();
		Calendar calendar1A = Calendar.getInstance();
		calendar1A.set(2008, 12, 10);
		date1A = calendar1A.getTime();
		Alumno oAlumno1 = new Alumno(oPersona1, oCarrera, date1A);
		
		/// -------------- alumno 2
		Date date2 = new Date();
		Calendar calendar2A = Calendar.getInstance();
		calendar2A.set(1990, 12, 12);
		date2 = calendar2A.getTime();
		Persona oPersona2 = new Persona("alumno2", "2222222", date2);
		Date date1B = new Date();
		Calendar calendar2B = Calendar.getInstance();
		calendar2B.set(2008, 12, 10);
		date1B = calendar2B.getTime();
		Alumno oAlumno2 = new Alumno(oPersona2, oCarrera, date1B);
		
		
		oCarrera.setAlum(oAlumno1);
		oCarrera.setAlum(oAlumno2);
		oFacultad.addCarrera(oCarrera);
		oFacultad.addCarrera(oCarrera2);
		oFacultad.mostrarCarrerasyAlumnos();

		//Ejercicio 4
		oPersona1.setPass("password");
		System.out.println(oPersona1.validarPass("passwordMal"));
		System.out.println(oPersona1.validarPass("password"));
		
	}
}