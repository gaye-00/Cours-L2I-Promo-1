import segment.*;

public class App {

	public static void main(String[] args) {
		
		Segement sg = new Segement(args[0], args[1]);
		sg.toString();

		if(sg.appartient(args[2]) == true)
			System.out.println(args[2] + " £ au " + toString());
		else
			System.out.println(args[2] + " £ pas au " + toString());

		System.out.println("Le " + sg + "est de longeur" + calculeLongeur());
	}
}