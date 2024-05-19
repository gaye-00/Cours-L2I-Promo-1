package pokemon;

public class PokemonFeu extends Pokemon{

	public PokemonFeu(String nom, int ph, int atk) {
		super(nom, ph, atk);
	}
	
	public void attaquer(Pokemon p) {
		if (p instanceof PokemonPlante) {
			super.attaquer(p);
			super.attaquer(p);
		}
		else if(p instanceof PokemonFeu || p instanceof PokemonEau) {
			if(p.getPh() >= 0.5 * this.getAtk()) {
				p.setPh(p.getPh() - ((int)(0.5 * this.getAtk())));
			}
			else 
				p.setPh(0);
		}
		else
			super.attaquer(p);
	}

	@Override
	public String toString() {
		return "PokemonFeu [nom=" + getNom() + ", ph=" + getPh() + ", atk=" + getAtk() + "]";
	}

}
