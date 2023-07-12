package ejercicio_1;

public class Producto {
	
	public Float precio;
	public String nombre;
	
	public Producto(Float precio, String nombre) {
		super();
		this.precio = precio;
		this.nombre = nombre;
	}
	public void setPrecio(float precio) {
		this.precio=precio;
	}
	public String verNombre() {
		return this.nombre;
	}
	
}