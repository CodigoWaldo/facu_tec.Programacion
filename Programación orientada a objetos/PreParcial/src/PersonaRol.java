public class PersonaRol {

  private Persona persona;
  private PersonaRol rol;
  private Anfitrion anfitrion;

  public PersonaRol() {}

  public Persona getPersona() {
    return this.persona;
  }

  public Anfitrion getAnfitrion() {
    return this.anfitrion;
  }

  public void setAnfitrion(Anfitrion anfitrion) {
    this.anfitrion = anfitrion;
  }

  public void setPersona(Persona persona) {
    this.persona = persona;
  }

  public PersonaRol getRol() {
    return this.rol;
  }

  public void setRol(PersonaRol rol) {
    this.rol = rol;
  }
}
