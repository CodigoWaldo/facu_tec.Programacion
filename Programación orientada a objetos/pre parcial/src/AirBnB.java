import java.util.Vector;

public class AirBnB {

  private Vector<Persona> clientes;
  private Vector<Hospedaje> cHospedajes;

  public AirBnB() {}

  public Vector<Persona> getClientes() {
    return this.clientes;
  }

  public Vector<Hospedaje> getCHospedajes() {
    return this.cHospedajes;
  }

  public void setCHospedajes(Hospedaje hospedaje) {
    cHospedajes.add(hospedaje);
  }

  public void setClientes(Vector<Persona> clientes) {
    this.clientes = clientes;
  }

  public void mostrarHospedajesCompartidos() {}

  public void mostrar5EstrellasxAño(short anno) {}
}
