package ejercicio_2;
import java.util.Calendar;

public class HorasJornal {

	private Float menor40;
	private Float mayor40;
	private Calendar fechasDesde;
	private Calendar fechasHasta;
	
	public HorasJornal(Float menor40hs, Float mayor40hs, Calendar fechasDesde, Calendar fechasHasta) {
		this.menor40 = menor40hs;
		this.mayor40 = mayor40hs;
		this.fechasDesde = fechasDesde;
		this.fechasHasta = fechasHasta;
	}

	public boolean pertenecePeriodo(Calendar periodo) {
		
		if(periodo.after(fechasDesde) && periodo.before(fechasHasta)) {
			return true;
		} else {
			return false;
		}
	}

	public Float calcularSueldo(Integer horasTrabajadas) {
		Float sueldo = 0f;
		if(horasTrabajadas>40) {
			sueldo += 40*menor40;
			sueldo += mayor40*(40-horasTrabajadas);
		} else {
			sueldo += horasTrabajadas*menor40;
		}
		
		return sueldo;
	}

}