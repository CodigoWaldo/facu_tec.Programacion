import java.util.Vector;

public class RolVentanillaDTO extends RolUsuarioDTO {

  private String clave;
  private Vector<ComedorDTO> comedorDTO;

  public RolVentanillaDTO(
    UsuarioDTO user,
    String clave,
    Vector<ComedorDTO> comedorDTO
  ) {
    super(user);
    this.clave = clave;
    this.comedorDTO = comedorDTO;
  }

public boolean EsComenzal(){
  return false;
}

public String nombreFacu(){
  return null;
}

public void mostrarSaldo(){}

}
