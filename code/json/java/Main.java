// Adicionar a dependência no arquivo pom.xml
import com.fasterxml.jackson.databind.ObjectMapper;

public class Main {
    public static void main(String[] args) throws Exception {
        // Objeto Java para serializar em JSON
        User user = new User("John", 30);

        // Serialização de Java para JSON
        ObjectMapper objectMapper = new ObjectMapper();
        String jsonString = objectMapper.writeValueAsString(user);
        System.out.println("JSON serializado: " + jsonString);

        // Desserialização de JSON para Java
        User deserializedUser = objectMapper.readValue(jsonString, User.class);
        System.out.println("Objeto desserializado: " + deserializedUser);
    }
}

class User {
    private String name;
    private int age;

    // Construtor, getters e setters omitidos para brevidade

    @Override
    public String toString() {
        return "User{" +
                "name='" + name + '\'' +
                ", age=" + age +
                '}';
    }
}
