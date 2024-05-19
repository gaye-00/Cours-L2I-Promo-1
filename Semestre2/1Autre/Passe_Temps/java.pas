import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
public class Fenetre extends Frame implements ActionListener{
public Button bouton1,bouton2,bouton3;
Panel p;
public Fenetre() {

setLayout(new GridLayout(1,1));

setBounds(400, 400, 250, 150);
setVisible(true);

p = new Panel(); this.add(p);
p.add(bouton1 =new Button("Abdoulaye Niang "));
p.add(bouton2 =new Button("Ablaye Capitaine "));
p.add(bouton3 =new Button("Amina Diallo"));


bouton1.addActionListener(this);
bouton2.addActionListener(this);
bouton3.addActionListener(this);

}

public void actionPerformed(ActionEvent e){
	if(bouton1 ==e.getSource() ){
		JOptionPane.showMessageDialog (null,"Laye Neymar pascal borom Barayi Papa de Amina ");
	}
else if(e.getSource()==bouton2){
		JOptionPane.showMessageDialog (null,"Laye C l'experimentateur sur les Iphones");
	}
	if(e.getSource()==bouton3){
		JOptionPane.showMessageDialog (null,"La Start de la Classe ,fille de Laye Baraya meuna togne");
	}
}
public static void main(String args[]){
new Fenetre();}
}
