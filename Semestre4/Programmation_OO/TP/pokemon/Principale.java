package pokemon;

import java.io.PrintStream;

public class Principale {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		PrintStream ps = System.out;
		Pokemon p1 = new Pokemon("p1", 100, 5);
		Pokemon p2 = new Pokemon("p2", 200, 5);
		
		Pokemon pf = new PokemonFeu("pf", 300, 20);
		Pokemon pe = new PokemonEau("pe", 300, 20);
		Pokemon pp = new PokemonPlante("pp", 300, 20);
		
		
		ps.println(p1);
		ps.println(p2);
		ps.println(pf);
		ps.println(pe);
		ps.println(pp);
		
		p1.attaquer(p2);
		ps.println(p2);
		
		pf.attaquer(pe);
		ps.println("Après attaque de PokemonFeu : " + pe);
		pf.attaquer(pp);
		ps.println("Après attaque de PokemonFeu : " + pp);
		
		pe.attaquer(pf);
		ps.println("Après attaque de PokemonEau : " + pf);
		pe.attaquer(pp);
		ps.println("Après attaque de PokemonEau : " + pp);
		
		pp.attaquer(pf);
		ps.println("Après attaque de PokemonPlante : " + pf);
		pp.attaquer(pe);
		ps.println("Après attaque de PokemonPlante : " + pe);
	}

}
