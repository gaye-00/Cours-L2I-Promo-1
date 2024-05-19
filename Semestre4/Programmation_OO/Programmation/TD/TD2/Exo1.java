import java.io.InputStreamReader;
import java.io.BufferedReader;

public class Exo1 {

	public static void main(String[] args) throws Exception {
		InputStreamReader isr = new InputStreamReader(System.in);
		BufferedReader br = new BufferedReader(isr);

		System.out.print("Donner un entier : ");
		String chaine = br.readLine();

		try {
			int number = Integer.parseInt(chaine);
			System.out.println("Apres la conversion " + number);
		}
		catch(NumberFormatException e) {
			System.out.println("Ooops ! Le parsing ne s'est pas bien passer !");
		}

		System.out.print("Donner un double : ");
		String chaine2 = br.readLine();

		try {
			float number2 = Float.parseFloat(chaine2);
			System.out.println("Apres la conversion du double " + number2);
		}
		catch(NumberFormatException ex) {
			System.out.println("Ooops ! Le parsing du double ne s'est pas bien passer !");
		}

	}
}