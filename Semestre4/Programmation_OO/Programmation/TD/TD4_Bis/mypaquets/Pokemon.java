package mypaquets;


public class Pokemon {

	public Pokemon(String _nom, int _hp, int _atk) {
		this.nom = _nom;
		this.hp = _hp;
		this.atk = _atk;
	}

	public String getnom() {
		return this.nom;
	}

	public void setnom(String new_nom) {
		this.nom = new_nom;
	}

	public int gethp() {
		return this.hp;
	}

	public void sethp(int new_hp) {
		this.hp = new_hp;
	}

	public int getatk() {
		return this.atk;
	}

	public void setatk(int new_atk) {
		this.atk = new_atk;
	}

	public boolean isDead() {
		return this.hp == 0;
	}

	public void attaquer(Pokemon p) {
		if(!p.isDead())
			if(p.hp >= this.atk)
				p.hp -= this.atk;
			else
				p.hp = 0;
	}

	public String toString() {
		return "Pokemon: nom = " + this.nom + ", hp = " + this.hp + ", atk = " + this.atk;
	}

	private	String nom;
	private int hp;
	private int atk;
}