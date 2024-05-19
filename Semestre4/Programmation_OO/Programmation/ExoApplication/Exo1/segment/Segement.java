package segment;

public class Segement {

	private int extr1, extr2;

	public Segement(int ex1, int ex2) {
		this.extr1 = ex1;
		this.extr2 = ex2;

		ordonne();
	}

	private void ordonne() {
		if(this.extr1 > this.extr2) {
			int tmp = this.extr1;
			this.extr1 = this.extr2;
			this.extr2 = tmp;
		}
	}

	public int calculeLongueur() {
		return this.extr2 - this.extr1;
	}

	public boolean appartient (int x) {
		return (x >= this.extr1) && (x <= this.extr2);
	}

	public int getExit1() {
		return this.extr1;
	}

	public int getExit2() {
		return this.extr2;
	}

	public int setExt1(int a) {
		this.extr1 = a;
		ordonne();
	}

	public int setExt2(int a) {
		this.extr2 = a;
		ordonne();
	}

	public String toString() {
		return ("Segement [" + this.extr1 + ", " + this.extr2 +"]");
	}

}