
import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

public class LectureDonnee {

    public static void main(String[] args) {

        String ligne;
        try {
            File file = new File("C:/Users/Abdoulaye_Gaye/Desktop/Semestre5/Cours/Formats_d'echanges_de_donnees/TP/Etudiant.csv");
            Scanner scan = new Scanner(file);

            int i = 1;
            while(scan.hasNextLine()) {
                ligne = scan.nextLine();
                System.out.println("Ligne " + i + " : " + ligne);
                i++;
            }
            scan.close();
        } catch(FileNotFoundException e) {
            // TODO / handle exception
            System.out.println("Le fichier n'existe pas");
        }
    }
}