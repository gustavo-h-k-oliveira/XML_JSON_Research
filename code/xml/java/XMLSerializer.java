package code.xml.java;

import java.io.File;
import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Marshaller;

public class XMLSerializer {
    public static void main(String[] args) {
        // Criando um objeto Customer
        Customer customer = new Customer();
        customer.setId(1);
        customer.setName("John Doe");
        customer.setAge(30);

        try {
            // Criando um arquivo para armazenar o XML
            File file = new File("customer.xml");
            // Inicializando o contexto JAXB para a classe Customer
            JAXBContext jaxbContext = JAXBContext.newInstance(Customer.class);
            // Criando o marshaller
            Marshaller marshaller = jaxbContext.createMarshaller();
            // Configurando a saída XML formatada
            marshaller.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
            // Serializando o objeto Customer para o arquivo XML
            marshaller.marshal(customer, file);
            // Exibindo o XML serializado no console
            marshaller.marshal(customer, System.out);
        } catch (JAXBException e) {
            e.printStackTrace();
        }
    }
}
