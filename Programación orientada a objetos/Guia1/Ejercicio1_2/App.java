package Ejercicio1_2;

import java.util.Calendar;
import java.util.GregorianCalendar;

public class App {
	
	public static void main(String[] args) {
		
		Calendar nacimiento = new GregorianCalendar(1995,07,15);
		Persona oPersona = new Persona("waldo","voe",11111,12367,1.80,70.0,nacimiento);

		//Ej1
		//oPersona.verDatos();
		
		//Ej2
		oPersona.mostrar();
		
		
	}

}
