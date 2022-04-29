public class Comentario {

  private String comentario;
  private Short estrellas;

  public Comentario(String comentario, Short estrellas) {
    this.comentario = comentario;
    this.estrellas = estrellas;
  }

  public String getComentario() {
    return this.comentario;
  }

  public void setComentario(String comentario) {
    this.comentario = comentario;
  }

  public Short getEstrellas() {
    return this.estrellas;
  }

  public void setEstrellas(Short estrellas) {
    this.estrellas = estrellas;
  }
}
