package ejercicio_2;

import java.util.Calendar;
import java.util.Vector;

public class Principal {

	public static void main(String[] args) {
		// nombre de la empresa
		Empresa empresa = new Empresa("SOLUCIONES INFORMATICAS INC.");

		// datos del jefe
		Jefe jefe = new Jefe(100000f, "Nicolas", "Cage", "andápashá 3211", 123456); // Sueldo,nombre,apellido,dirección,dni

		// Trabajador mensualizado
		Categoria catJunior = new Categoria(30000f, "junior programmer.");
		Mensualizado empleado1 = new Mensualizado(jefe, catJunior, "Gabe", "Newell", "Taparacá 6654", 678965); // Jefe,categoria,nombre,apellido,dirección,dni

		// Trabajador Jornalizado
		Calendar fecha1 = Calendar.getInstance(); 
		Calendar fecha2 = Calendar.getInstance();
		fecha1.set(2020, 10, 23);
		fecha2.set(2020, 11, 23);
		
		HorasJornal hora1 = new HorasJornal(1000f, 1200f, fecha1, fecha2); //sueldo menor a 40hs, sueldo mayor a 40 hs,periodo de trabajo
		
		Vector<HorasJornal> horas = new Vector<HorasJornal>();
		horas.add(hora1);//se agrega la hora1 al vector de horas

		Calendar fecha3 = Calendar.getInstance();
		fecha3.set(2020, 10, 25);
		
		Jornada jornada = new Jornada(45, fecha3);
		
		Jornalizado empleado2 = new Jornalizado(jefe,"Maria","Genolet","Seguidelargo 6681", 546324, horas); //jefe,nombre,apellido,dirección,dni,horas trabajadas
		empleado2.addJornadasTrabajadas(jornada);

		// se registran los empleados a la empresa
		empresa.addEmpleado(empleado2);
		empresa.addEmpleado(empleado1);
		empresa.addEmpleado(jefe);
		// imprime en consola los sueldos.
		System.out.println(empresa.verNombre());
		System.out.println("Empleados: ");
		empresa.calcularRemuneraciones(fecha3);

	}
}
