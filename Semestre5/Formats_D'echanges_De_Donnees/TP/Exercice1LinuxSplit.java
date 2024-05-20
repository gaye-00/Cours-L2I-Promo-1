
import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

public class Exercice1LinuxSplit {

    public static void main(String[] args) {

        try {
            File file = new File("/media/abdoulaye/Users/Abdoulaye_Gaye/Desktop/Semestre5/Cours/Formats_d'echanges_de_donnees/TP/Etudiant.csv");
            Scanner scan = new Scanner(file);

            String ligne;
            String []line;
            int i = 1;
            while(scan.hasNextLine()) {
                
                ligne = scan.nextLine();
                line = ligne.split(",");
       
                System.out.println("Ligne " + i + " : " + ligne + " : NbColonnes -> " + line.length);
                i++;
            }
            scan.close();
        } catch(FileNotFoundException e) {
            // TODO / handle exception
            System.out.println("Le fichier n'existe pas");
        }
    }
}