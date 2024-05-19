public class Exo2 {

	public static void main(String[] args) {

		if(args.length == 3) {
			try {
				int val1 = Integer.parseInt(args[1]);
				int val2 = Integer.parseInt(args[2]);

				switch(args[0]) {
			case "+" :
				System.out.println("La somme est : " + (val1 + val2));
				break;

			case "-" :
				System.out.println("La soustraction est : " + (val1 - val2));
				break;

			case "*" :
				System.out.println("Le produit est : " + (val1 * val2));
				break;

			case "/" :
				System.out.println("La division est : " + (val1 / val2));
				break;	

			default :
				System.out.println("Non valide.");
				}
			}
			catch(NumberFormatException e) {
				System.out.println("Ooops! Y'a une exception levee");
		}

			
		}
		else
			System.out.println("Nombre d'arguments no valable.");
	}
} 