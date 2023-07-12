import java.util.Calendar;

public class Cupon {

  private String identificador;
  private Calendar fechaCompra;
  private Entrega oEntrega;

  public Cupon(String identificador, Calendar fechaCompra) {
    this.identificador = identificador;
    this.fechaCompra = fechaCompra;
    oEntrega = null;
  }

  public void entregar(Entrega oEntrega){
    this.oEntrega = oEntrega;
  }

  public boolean entregado() {
    Boolean aux = false;
    if (oEntrega != null) {
      aux = true;
    }
    return aux;

  }
}
