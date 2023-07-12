package ejercicio_2;
public class Categoria {

	private Float sueldo;

	private String nombre;

	public Categoria(Float sueldo, String nombre) {
		this.sueldo = sueldo;
		this.nombre = nombre;
	}

	public String getCategoria() {
		return nombre;
	}
	
	public Float getSueldo() {
		return sueldo;
	}

}