import mypaquets.*;

public class Tester {

	public static void main(String[] args) {
		A object;
		double hasard;

		for(int i = 0; i < 10; ++i) {
			hasard = Math.random();
			if(hasard < 0.5)
				object = new A();
			else
				object = new B();

			object.m1();
		}
	}
}