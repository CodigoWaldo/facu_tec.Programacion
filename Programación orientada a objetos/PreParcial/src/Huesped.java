import java.util.Calendar;

public class Huesped extends PersonaRol{ //herencia de persona rol
    private Calendar nacimiento;
    private Alquiler responsable;
    private Alquiler clienteDe;
    

    public Huesped() {
        super();
    }

    public Calendar getNacimiento() {
        return this.nacimiento;
    }


    public Alquiler getClienteDe() {
        return this.clienteDe;
    }

    public void setClienteDe(Alquiler clienteDe) {
        this.clienteDe = clienteDe;
    }

    public Alquiler getResponsable() {
        return this.responsable;
    }

    public void setResponsable(Alquiler responsable) {
        this.responsable = responsable;
    }



    public void setNacimiento(Calendar nacimiento) {
        this.nacimiento = nacimiento;
    }

}
