public class Persona {
    private String Nombre;
    private String Apellido;
    private Integer DNI;

    public Persona(String Nombre, String Apellido, Integer DNI) {
        this.Nombre = Nombre;
        this.Apellido = Apellido;
        this.DNI = DNI;
    }

    public String getNombre() {
        return this.Nombre;
    }

    public String getApellido() {
        return this.Apellido;
    }

    public Integer getDNI() {
        return this.DNI;
    }

}
