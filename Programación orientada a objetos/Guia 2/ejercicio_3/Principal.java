package ejercicio_3;

import java.util.Calendar;

public class Principal {

	public static void main(String[] args) throws Exception {
		// pais con aranceles
		Pais argentina = new Pais("Argentina", 0);
		//
		Dueno dueno1 = new Dueno("Walter", "fofeli", 4550055); // nombre,apellido,teléfono
		Auto auto1 = new Auto("audi", "TT", 3586000.38f, 203051.5f, argentina);// marca,modelo,precio,kilometraje,pais
		Auto auto2 = new Auto("fiat", "Toro", 1500530f, 0f, argentina);
		Auto auto3 = new Auto("volskwagen", "Gol", 800500f, 203051.5f, argentina);

		auto1.anadirDueno(dueno1); // el auto 1 tiene dueño
		auto3.anadirDueno(dueno1); // el auto 3 tiene dueño

		DetalleDeVenta detVenta1 = new DetalleDeVenta(auto1); // con dueño		
		DetalleDeVenta detVenta2 = new DetalleDeVenta(auto2); // 0km
		DetalleDeVenta detVenta3 = new DetalleDeVenta(auto1); // con dueño
		
		Venta venta1 = new Venta(Calendar.getInstance());
		venta1.anadirDetalleVenta(detVenta1);
		venta1.anadirDetalleVenta(detVenta2);
		venta1.anadirDetalleVenta(detVenta3);

		Concesionaria coinauto = new Concesionaria("Coinauto", 51, "San luis 4323");// nombre, codigo,direccion
		coinauto.agregarVenta(venta1);

		// ejecuciones de prueba.

		System.out.println("Total ventas: AUTOS NACIONALES CON DUEÑO");
		Float TEST = coinauto.ventaPorPaisConCondicion(argentina, true); // condición nacional y con dueño
		System.out.println("El monto es: " + TEST + "$");

		System.out.println("TEST: se deberia mostrar la venta de autos sin dueño");
		Float TEST2 = coinauto.ventaPorPaisConCondicion(argentina, false);// condición nacional y sin dueño
		System.out.println("El monto es: " + TEST2 + "$");
	}
}
