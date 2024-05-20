import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import java.io.File;

public class LireFichierXML1 {
    public static void main(String[] args) {
        try {
            File xmlFile = new File("Etudiant.xml");

            DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
            DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
            Document doc = dBuilder.parse(xmlFile);

            doc.getDocumentElement().normalize();

            NodeList studentList = doc.getElementsByTagName("student");

            for (int temp = 0; temp < studentList.getLength(); temp++) {
                Element studentNode = (Element) studentList.item(temp);

                String id = studentNode.getElementsByTagName("id").item(0).getTextContent();
                String firstName = studentNode.getElementsByTagName("firstname").item(0).getTextContent();
                String lastName = studentNode.getElementsByTagName("lastname").item(0).getTextContent();
                String subject = studentNode.getElementsByTagName("subject").item(0).getTextContent();
                String marks = studentNode.getElementsByTagName("marks").item(0).getTextContent();

                System.out.println("ID: " + id);
                System.out.println("First Name: " + firstName);
                System.out.println("Last Name: " + lastName);
                System.out.println("Subject: " + subject);
                System.out.println("Marks: " + marks);
                System.out.println();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
