package mypaquets;

public class Pegasus extends Horse {

	public Pegasus(String name) {
		super(name);
		this._posZ = 100;
	}

	public void fly(int z) {
		this._posZ = z;
		System.out.println("Le pegase s'eleve dans les airs ( Z = " + this._posZ + ")");
	}

	private int _posZ;
}