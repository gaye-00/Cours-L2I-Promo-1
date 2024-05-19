import mypaquets.*;

public class GestionPoint {

	public static void main(String args[]){
		Point p = new Point(0, 0);
		PointColor pc = new PointColor (10, 5, "jaune");

		System.out.println(p.toString());
		System.out.println(pc.toString());
		// System.out.println(p.getCouleur()); # p.getCouleur(); est dans la classe PointColor
		// System.out.println(((PointColor) p).getCouleur()); # Va lever une Exception
		System.out.println(((Point) pc)); 
		// Même si pc est caster en p, c'est le toString() de pc qui va être appeler en 1er

		System.out.println();
		System.out.println((new Point(10, 10)).equals(new Point(10, 10)));
		// Renvoie true

		System.out.println();
		Point p1 = new PointColor (0, 0, "rouge");
		Point p2 = new PointColor (0, 0, "rouge");
		System.out.println("p1 égal à p2 ? " + p1.equals(p2));
		System.out.println("p1 égal à p2 ? " + p1.equals((Object) p2));

	}
}