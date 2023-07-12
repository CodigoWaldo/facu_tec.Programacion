public abstract class RolUsuarioDTO {

  protected UsuarioDTO usuarioDTO;

  public RolUsuarioDTO(UsuarioDTO usuarioDTO) {
    this.usuarioDTO = usuarioDTO;
  }

  public boolean EsComenzal() {
    return false;
  }

  public abstract String nombreFacu();

  public abstract void mostrarSaldo();

}

