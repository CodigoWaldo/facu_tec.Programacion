package ejercicio_2;

public class Principal {
	public static void main(String[] args) {

		Persona obj_Persona_1 = new Persona("Walter", "Voegeli", 4, 7, 1995,"password"); // nombre,apellido,día,mes,año
		obj_Persona_1.mostrar();
		if(obj_Persona_1.verificar("password")) {System.out.print("True");};
	}
}