import java.util.Vector;

public class Universidad {

  private String nombre;

  private Vector<ComedorDTO> cComedorDTO;
  private Vector<Facultad> cFacultad;
  private Vector<UsuarioDTO> cUsuarioDTO;

  public Universidad(String nombre) {
    this.nombre = nombre;
  }
////
  public void AgregarUsrs(UsuarioDTO OUsuarioDTO) {
    cUsuarioDTO.add(OUsuarioDTO);
  }
////
public void AgregarFacu(Facultad OFacultad) {
   cFacultad.add(OFacultad);
}
///
public void AgregarComedor(ComedorDTO OComedorDTO) {
  cComedorDTO.add(OComedorDTO);
}
///
  public void ListarUsrs() {
 for(UsuarioDTO Aux : cUsuarioDTO){
  if(Aux.EsComenzal() && Aux.DosRoles()){
    Aux.MostrarNomApe();
    Aux.MostrarFacu();
    Aux.verSaldo();
  }
 }

  }





}
