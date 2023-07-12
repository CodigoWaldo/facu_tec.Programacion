import java.util.Calendar;
import java.util.Vector;

public class RolComensalDTO extends RolUsuarioDTO {

  private Calendar ultimoAcceso;
  private String tokenSesion;
  private Facultad facultad;
  private Vector<Cupon> cupon;

  public RolComensalDTO(
    UsuarioDTO user,
    Calendar ultimoAcceso,
    String tokenSesion
  ) {
    super(user);
    this.ultimoAcceso = ultimoAcceso;
    this.tokenSesion = tokenSesion;
  }

  public boolean EsComenzal() {
    return true;
  }

  public String nombreFacu() {
    return facultad.MostrarNombre();
  }

  public void mostrarSaldo() {
    Integer aux = cupon.size();
    for (Cupon obj : cupon) {
      if (obj.entregado()) {
        aux -= 1;
      }
    }
    System.out.print(aux);
  }
}
