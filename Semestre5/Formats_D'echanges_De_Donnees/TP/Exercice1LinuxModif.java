
import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;
import java.util.StringTokenizer;

public class Exercice1LinuxModif {

    public static void main(String[] args) {

        String name;
        // Scanner sc = new Scanner(System.in);

        try (Scanner sc = new Scanner(System.in)) {
            System.out.print("Donner le nom du fichier csv : ");
            name = sc.nextLine();
        }

        try {
            File file = new File("/media/abdoulaye/Users/Abdoulaye_Gaye/Desktop/Semestre5/Cours/Formats_d'echanges_de_donnees/TP/" + name + ".csv");
            Scanner scan = new Scanner(file);
            
            String ligne;
            int i = 1;
            while(scan.hasNextLine()) {
                ligne = scan.nextLine();

                // ligne.split(",");
                StringTokenizer st = new StringTokenizer(ligne, ",", false);
                int longeurChaine = 0;

                while(st.hasMoreTokens()) {
                    longeurChaine++;
                    st.nextToken();
                }

                System.out.println("Ligne " + i + " : " + ligne + " : NbColonnes -> " + longeurChaine);
                i++;
            }
            scan.close();
        } catch(FileNotFoundException e) {
            // TODO / handle exception
            System.out.println("Le fichier n'existe pas");
        }
    }
}