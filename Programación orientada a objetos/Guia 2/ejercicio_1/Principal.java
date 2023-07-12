package ejercicio_1;

public class Principal {

	public static void main(String[] args) {
	    		
		//Distintos IVA a usar
		IVA m_iva = new IVA("Monotributo");
		IVA m_RI = new IVA("R.I.");
		
		//Datos de la factura 0		
		Cliente m_cliente1 = new Cliente("Gilcomat SRL.", "30-12345678-1", m_RI);		 
		
		Producto m_producto = new Producto(6f, "Porcelanato 45x45");		
		Producto m_producto1 = new Producto(400f, "Grifería FV 6 piezas");
		
		DetalleFactura m_detallefactura = new DetalleFactura(100, 6f, m_producto);		
		DetalleFactura m_detallefactura1 = new DetalleFactura(1, 400f, m_producto1);
		
		Factura m_factura = new Factura(01,05,2015, m_cliente1); //fecha DDMMAAAA y cliente
		m_factura.cargarDetalle(m_detallefactura);
		m_factura.cargarDetalle(m_detallefactura1);

		Empresa m_empresa = new Empresa("Mayorista S.A.", m_iva);
		m_empresa.cargarCliente(m_cliente1);
		m_empresa.cargarFactura(m_factura);
		m_empresa.cargarProducto(m_producto);
		m_empresa.cargarProducto(m_producto1);
		
		//Se imprimen todas las facturas de la empresa en consola.
		m_empresa.listarFacturas();
	}

}
