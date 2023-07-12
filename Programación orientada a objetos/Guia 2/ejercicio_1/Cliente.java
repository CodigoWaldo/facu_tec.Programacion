package ejercicio_1;

public class Cliente {
	private String razonSocial;
	private String Cuit;	
	private IVA myIVA;
	
	public Cliente(String razonSocial, String cuit,IVA iva) {
		super();
		this.razonSocial = razonSocial;
		this.Cuit = cuit;		
		this.myIVA = iva;
	}
	public String verNombre() {
		return razonSocial;
	}
	public String verCuit() {
		return Cuit;
	}
	public String verIVA() {
		return myIVA.descripcionIVA();
	}

	
}