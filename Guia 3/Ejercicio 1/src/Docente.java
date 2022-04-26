public class Docente {
    private Persona iPersona;
    private Integer LegajoNum;

    public Docente(String Name, String Apellido, Integer DNI, Integer LegajoNum) {
        iPersona = new Persona(Name, Apellido, DNI);

        this.LegajoNum = LegajoNum;

    }

    String VerNombre() {

        return iPersona.getNombre();
    }

    String verApellido() {
        return iPersona.getApellido();
    }

    Integer verDNI() {
        return iPersona.getDNI();
    }

    Integer verLegajo() {
        return LegajoNum;
    }

}
