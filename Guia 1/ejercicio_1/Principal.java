package ejercicio_1;

public class Principal {
	public static void main(String[] args) {

		Persona obj_Persona_1 = new Persona("Walter");
		Persona obj_Persona_2 = new Persona("Angeles");

		System.out.println("Nombre de persona 1: "+obj_Persona_1.getNombre());
		System.out.println("Nombre de persona 2: "+obj_Persona_2.getNombre());

		if (obj_Persona_1.equals(obj_Persona_2)) {
			System.out.println("Los objetos son iguales");
		} else {
			System.out.println("Los objetos son distintos");
		}

	}
}