package code.xml.java;

import java.io.File;
// Importando as classes necessárias do pacote javax.xml.bind
import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Unmarshaller;

public class XMLDeserializer {
    public static void main(String[] args) {
        try {
            // Carregando o arquivo XML
            File file = new File("customer.xml");
            // Inicializando o contexto JAXB para a classe Customer
            JAXBContext jaxbContext = JAXBContext.newInstance(Customer.class);
            // Criando o unmarshaller
            Unmarshaller unmarshaller = jaxbContext.createUnmarshaller();
            // Desserializando o XML para um objeto Customer
            Customer customer = (Customer) unmarshaller.unmarshal(file);
            // Exibindo o objeto Customer desserializado
            System.out.println(customer);
        } catch (JAXBException e) {
            e.printStackTrace();
        }
    }
}
