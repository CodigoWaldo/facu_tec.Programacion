package ejercicio_1;

import java.util.Calendar;
import java.util.Vector;

public class Factura {

	private Calendar fecha = Calendar.getInstance();
	private Vector<DetalleFactura> mydetalleFactura;
	private Cliente myCliente;

	public Factura(Integer dia,Integer mes,Integer ano, Cliente myCliente) {
		super();
		fecha.set(ano,mes,dia);
		this.myCliente = myCliente;
		this.mydetalleFactura = new Vector<DetalleFactura>();
		
	
	}

	public float calcularTotal() {
		float total = 0f;
		for (DetalleFactura odetalle : mydetalleFactura) {
			total += odetalle.calcularTotal();
		}
		return total;
	}

	public void cargarDetalle(DetalleFactura d) {
		this.mydetalleFactura.add(d);
	}

	public String nombreCliente() {
		return myCliente.verNombre();
	}
	
	public String cuitCliente() {
		return myCliente.verCuit();
	}
	
	public String ivaCliente() {
		return myCliente.verIVA();
	}
	
	public void verFecha() {
		System.out.println(
				fecha.get(Calendar.DAY_OF_MONTH) + "/" + fecha.get(Calendar.MONTH) + "/" + fecha.get(Calendar.YEAR));
	}

	public void verDetalles() {
		for (int i = 0; i < mydetalleFactura.size(); i++) {

			System.out.println("Detalle " + (i + 1) + " :" + mydetalleFactura.get(i).verNombreProducto() + "  "
					+ mydetalleFactura.get(i).verUnidad() + " unid.  Total Item:$"
					+ mydetalleFactura.get(i).calcularTotal());
		}
	}

}
