import java.util.Vector;

public class UsuarioDTO {

  private String usuario;
  private String apellido;
  private String nombre;
  private String correo;

  private Vector<RolUsuarioDTO> cRolUsuarioDTO;

  public UsuarioDTO(
    String usuario,
    String apellido,
    String nombre,
    String correo
  ) {
    this.usuario = usuario;
    this.apellido = apellido;
    this.nombre = nombre;
    this.correo = correo;
  }

  public void CargarRoles(RolUsuarioDTO ORolUsuarioDTO) {
    cRolUsuarioDTO.add(ORolUsuarioDTO);
  }

  public Boolean DosRoles() {
    Integer Cantidad = 0;
    Boolean estado = false;
    Cantidad = cRolUsuarioDTO.size();
    if (Cantidad >= 2) {
      estado = true;
    }
    return estado;
  }

  public Boolean EsComenzal() {
    Boolean estado = false;
    for (RolUsuarioDTO aux : cRolUsuarioDTO) {
      if (aux.EsComenzal()) {
        estado = true;
      }
    }
    return estado;
  }

  public void MostrarNomApe() {
    System.out.print(nombre + " " + apellido);
  }

  public void MostrarFacu() {
    String facu = "name";
    for (RolUsuarioDTO aux : cRolUsuarioDTO) {
      if (aux.EsComenzal()) {
        facu = aux.nombreFacu();
      }
    }
    System.out.print(facu);
  }

public void verSaldo(){    
    for (RolUsuarioDTO aux : cRolUsuarioDTO) {
      if (aux.EsComenzal()) {
        aux.mostrarSaldo();
      }
    }   
}

}
