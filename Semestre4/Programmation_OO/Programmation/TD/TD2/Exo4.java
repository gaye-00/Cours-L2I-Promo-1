import java.util.Arrays;

public class Exo4 {
	public static void main(String[] args) {

		int[] t1 = new int[]{2, 7, 5, 21, -7};
		int[] t2 = Arrays.copyOf(t1, t1.length);

		for(int element : t1)
			System.out.print(element + " ");

		System.out.println();

		for(int element : t2)
			System.out.print(element + " ");
		System.out.println();

		// if(t1 == t2)
		// 	System.out.println("Les deux tableau sont egaux");

		int i = 0;
		boolean ok = true;
		while(i < t1.length && ok)
			if(t1[i] == t2[2])
				i++;
				ok = false;

		if(Arrays.equals(t1, t2))
			System.out.println("Les deux tableau sont egaux");
		else
			System.out.println("Les deux tableau ne sont pas egaux");
	}
}