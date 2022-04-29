import java.util.Calendar;

public class App {

  private static AirBnB alojamiento;
  private static Comentario comentario;
  private static Hospedaje hospedaje;
  private static Persona persona;
  private static PersonaRol cliente;
  private static Anfitrion anfitrion;
  private static Alquiler alquiler;
  private static Calendar desde;
  private static Calendar hasta;
  private static Huesped huesped;

  public static void main(String[] args) throws Exception {
    // comentario
    comentario.setComentario("Un lugar muy cómodo para mirar la tele");
    short estrellas = 5;
    comentario.setEstrellas(estrellas);
    comentario.setPersonarol(cliente);

    //persona
    persona = new Persona("walter", "fulano@mengano.com");
    persona.setReview(comentario);

    //personaRol
    cliente.setPersona(persona);

    //huesped
    huesped.setNacimiento(desde);

    //Alquiler
    desde = Calendar.getInstance();
    hasta = Calendar.getInstance();
    desde.set(2019, 5, 1);
    desde.set(2019, 6, 15);

    alquiler = new Alquiler(350.50f, desde, hasta);

    alquiler.setGrupoHuespedes(huesped);

    //anfitrion
    anfitrion = new Anfitrion("waldo");

    //hospedaje
    hospedaje = new Hospedaje(2, "Taparallá 2299");
    hospedaje.setAnfitrion(anfitrion);
    hospedaje.añadirAlquiler(alquiler);

    //registro del hospedaje en airbnb    
    alojamiento.setCHospedajes(hospedaje);

    //llamada al método
    short anno = 2019;
    alojamiento.mostrar5EstrellasxAño(anno);
  }
}
