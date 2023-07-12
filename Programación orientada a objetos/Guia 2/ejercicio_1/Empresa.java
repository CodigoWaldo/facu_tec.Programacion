package ejercicio_1;

import java.util.Vector;

public class Empresa {
	private String nombre;
	private IVA myIva;
	
	private Vector<Factura> myFacturas;	
	private Vector<Producto> myProducto;
	private Vector<Cliente> myClientes;

	public Empresa(String nombre, IVA myIva) {
		super();
		this.nombre = nombre;
		this.myIva = myIva;
		
		myFacturas=new Vector<Factura>();
		myProducto=new Vector<Producto>();
		myClientes=new Vector<Cliente>();
	}
	public void listarFacturas() {
		for(int i=0;i<myFacturas.size();i++) {
		System.out.println(this.nombre+ " -IVA "+myIva.descripcionIVA());
		System.out.println("Factura nro "+ i);
		System.out.println("Cliente "+myFacturas.get(i).nombreCliente()+" -"+myFacturas.get(i).ivaCliente()+" -cuit "+myFacturas.get(i).cuitCliente());
		System.out.print("Fecha ");
		myFacturas.get(i).verFecha();
		System.out.println("Total $"+myFacturas.get(i).calcularTotal());
		myFacturas.get(i).verDetalles();
		System.out.println("-----");
		}
	}
	
	public void cargarCliente(Cliente o) {
		myClientes.add(o);
	}
	public void cargarFactura(Factura f) {
		myFacturas.add(f);
	}
	public void cargarProducto(Producto p) {
		myProducto.add(p);
	}
}
