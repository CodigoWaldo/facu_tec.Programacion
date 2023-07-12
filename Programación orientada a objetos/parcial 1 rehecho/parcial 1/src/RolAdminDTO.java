public class RolAdminDTO extends RolUsuarioDTO {

  private String clave;

  public RolAdminDTO(String clave, UsuarioDTO user) {
    super(user);
    this.clave = clave;
  }


  public String nombreFacu(){
    return null;
  }

  public void mostrarSaldo(){}

}



