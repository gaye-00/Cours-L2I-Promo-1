package pokemon;

public class Pokemon {
	private String nom;
	private int ph;
	private int atk;
	
	public Pokemon(String nom, int ph, int atk) {
		super();
		this.nom = nom;
		this.ph = ph;
		this.atk = atk;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public int getPh() {
		return ph;
	}
	public void setPh(int ph) {
		this.ph = ph;
	}
	public int getAtk() {
		return atk;
	}
	public void setAtk(int atk) {
		this.atk = atk;
	}
	
	public boolean isDead() {
		return ph == 0;
	}
	
	public void attaquer(Pokemon p) {
		if(!p.isDead()) {
			if(p.ph >= this.atk)
					p.ph -= this.atk;
			else
				p.ph = 0;
		}
	}
	
	@Override
	public String toString() {
		return "Pokemon [nom=" + nom + ", ph=" + ph + ", atk=" + atk + "]";
	}
}
