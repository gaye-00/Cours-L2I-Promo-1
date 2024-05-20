import java.io.File;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;
import org.w3c.dom.NodeList;
import org.w3c.dom.Node;
public class LireFichierXML {
    public static void main(String[] args) {
        try {
            File xmlFile = new File("Etudiant.xml");

            DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
            DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
            Document doc = dBuilder.parse(xmlFile);

            doc.getDocumentElement().normalize();

            NodeList etudiantList = doc.getElementsByTagName("etudiant");

            for (int temp = 0; temp < etudiantList.getLength(); temp++) {
                Node etudiantNode = etudiantList.item(temp);
                if (etudiantNode.getNodeType() == Node.ELEMENT_NODE) {
                    String id = etudiantNode.getAttributes().getNamedItem("id").getNodeValue();
                    String nom = etudiantNode.getChildNodes().item(1).getTextContent();
                    String prenom = etudiantNode.getChildNodes().item(3).getTextContent();
                    String age = etudiantNode.getChildNodes().item(5).getTextContent();

                    System.out.println("ID : " + id);
                    System.out.println("Nom : " + nom);
                    System.out.println("Prénom : " + prenom);
                    System.out.println("Âge : " + age);
                    System.out.println();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
