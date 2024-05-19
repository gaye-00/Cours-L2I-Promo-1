import mypaquets.*;

public class App {

	public static void main(String[] args) {
		Rectangle reg = new Rectangle(12, 8);
		Carre car = new Carre(4);

		System.out.println(reg.toString());

		System.out.println("La longeur est : " + reg.getLongeur());
		System.out.println("La largeur est : " + reg.getLargeur());
		System.out.println("La surface du rectangel est : " + reg.surface());

		System.out.println("\n------------------------------------------------------------------------");

		System.out.println(car.toString());
		System.out.println("Le cote du carre est : " + car.getLongeur());
		System.out.println("La surface du carre est : " + car.surface());
	}
}