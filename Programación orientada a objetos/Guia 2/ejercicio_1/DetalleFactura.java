package ejercicio_1;

public class DetalleFactura {
	
	private Integer unidades;
	private Float precioUnitario;
	private Producto myProducto;

	public DetalleFactura(Integer unidades, Float precioUnitario, Producto myProducto) {
		super();
		this.unidades = unidades;
		this.precioUnitario = precioUnitario;
		this.myProducto = myProducto;
		
		myProducto.setPrecio(unidades*precioUnitario);
	}
	public float calcularTotal() {
		return unidades*precioUnitario;
	}
	public Integer verUnidad() {
		return this.unidades;
	}
	
	public String verNombreProducto() {
		return myProducto.verNombre();
	}
	
	
}
