import java.util.Vector;

public class Persona {

  private String nombre;
  private String eMail;
  private Vector<Comentario> comentarios;
  private Vector<PersonaRol> roles;
  private AirBnB cuenta;

  public Persona(String nombre, String eMail) {
    comentarios = new Vector<>();
    roles = new Vector<>();
    this.nombre = nombre;
    this.eMail = eMail;
  }

  public AirBnB getCuenta() {
    return this.cuenta;
  }

  public void setCuenta(AirBnB cuenta) {
    this.cuenta = cuenta;
  }

  public Vector<Comentario> getComentarios() {
    return this.comentarios;
  }

  public void setReview(String coment, short estrellas) { //se agrega un review a la lista de comentarios de la persona
    Comentario aux = new Comentario(coment, estrellas);
    comentarios.add(aux);
  }

  public void setComentarios(Vector<Comentario> comentarios) {
    this.comentarios = comentarios;
  }

  public Vector<PersonaRol> getRoles() {
    return this.roles;
  }

  public void setRoles(Vector<PersonaRol> roles) {
    this.roles = roles;
  }

  public String getNombre() {
    return this.nombre;
  }

  public void setNombre(String nombre) {
    this.nombre = nombre;
  }

  public String getEMail() {
    return this.eMail;
  }

  public void setEMail(String eMail) {
    this.eMail = eMail;
  }
}
