import java.util.Calendar;

public class Entrega {

  private Calendar fecha;
  private ComedorDTO comedorDTO;
  private Cupon cupon;
  private RolVentanillaDTO rolVentanillaDTO;

  public Entrega(
    Calendar fecha,
    ComedorDTO comedorDTO,
    Cupon cupon,
    RolVentanillaDTO rolVentanillaDTO
  ) {
    this.fecha = fecha;
    this.comedorDTO = comedorDTO;
    this.cupon = cupon;
    this.rolVentanillaDTO = rolVentanillaDTO;
  }



}
