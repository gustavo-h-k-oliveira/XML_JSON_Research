# Bibliotecas de ferramentas

## Características e Ferramentas do JSON

### Parsing e Serialização:

- *Jackson* (Java): Uma biblioteca poderosa para parsing e serialização de JSON, amplamente utilizada em projetos Java.

```java
// Parsing
ObjectMapper objectMapper = new ObjectMapper();
MyObject myObject = objectMapper.readValue(new File("file.json"), MyObject.class);

// Serialização
objectMapper.writeValue(new File("output.json"), myObject);

// Manipulação
JsonNode rootNode = objectMapper.readTree(new File("file.json"));
```

- *Gson* (Java): Outra biblioteca popular para conversão entre objetos Java e JSON.

```java
// Parsing
Gson gson = new Gson();
MyObject myObject = gson.fromJson(new FileReader("file.json"), MyObject.class);

// Serialização
gson.toJson(myObject, new FileWriter("output.json"));

// Manipulação
JsonObject jsonObject = new JsonParser().parse(new FileReader("file.json")).getAsJsonObject();
```

- *json* (Python): Biblioteca padrão do Python para trabalhar com JSON, fornecendo funções para serialização e desserialização.

```python
# Parsing
import json
with open("file.json", "r") as file:
    data = json.load(file)

# Serialização
with open("output.json", "w") as file:
    json.dump(data, file, indent=4)

# Manipulação
data['key'] = 'value'
```

- *Json.NET* (C#): Biblioteca rica em funcionalidades para trabalhar com JSON em .NET, oferecendo capacidades de parsing, serialização, e manipulação de dados.

```csharp
// Parsing
MyObject myObject = JsonConvert.DeserializeObject<MyObject>(File.ReadAllText("file.json"));

// Serialização
File.WriteAllText("output.json", JsonConvert.SerializeObject(myObject, Formatting.Indented));

// Manipulação
JObject jsonObject = JObject.Parse(File.ReadAllText("file.json"));
```

### Manipulação e Consulta:

- *jq*: Ferramenta de linha de comando para processar dados JSON, permitindo consulta e transformação de JSON.

**Parsing e Manipulação**:

```sh
cat file.json | jq '.key'
```

**Serialização (Transformação)**:

```sh
cat file.json | jq '.' > output.json
```

- *Jayway JsonPath* (Java): Biblioteca que permite navegar e extrair dados de objetos JSON usando sintaxe JSONPath.

- *JSON-P* (Java API for JSON Processing): Parte do Java EE, oferece APIs para parsing, geração, transformação e consulta de JSON.

### Validadores Online:

- *JSONLint*: Validador e formatador online para JSON, verifica a sintaxe e formata o JSON de maneira legível.

- *JSON Schema Validator*: Ferramenta para validar dados JSON contra um esquema JSON, garantindo que os dados atendam aos requisitos definidos.

### API e Bibliotecas Específicas:

- *fetch API* (JavaScript): API nativa para manipulação de requests HTTP, frequentemente utilizada para trabalhar com dados JSON.

- *JSON.stringify()* e *JSON.parse()* (JavaScript): Funções nativas do JavaScript para serializar objetos em JSON e parsear strings JSON em objetos.

**Exemplo de uso**:

Vamos enviar um objeto JSON para um servidor usando a fetch API e a função JSON.stringify() para converter o objeto JavaScript em uma string JSON.

```javascript
// Objeto JavaScript a ser enviado
const dataToSend = {
    name: "John Doe",
    age: 30,
    email: "john.doe@example.com"
};

// URL do endpoint do servidor
const url = "https://example.com/api/data";

// Enviar dados usando fetch API
fetch(url, {
    method: "POST",
    headers: {
        "Content-Type": "application/json"
    },
    body: JSON.stringify(dataToSend) // Convertendo o objeto JavaScript em JSON
})
.then(response => response.json()) // Parseando a resposta JSON
.then(data => {
    console.log("Success:", data);
})
.catch(error => {
    console.error("Error:", error);
});
```

Vamos receber uma resposta JSON do servidor e usar a função JSON.parse() para converter a string JSON de volta em um objeto JavaScript.

```javascript
// URL do endpoint do servidor para receber dados
const getUrl = "https://example.com/api/data";

// Receber dados usando fetch API
fetch(getUrl)
.then(response => response.json()) // Parseando a resposta JSON
.then(data => {
    console.log("Received Data:", data);
    // Acessar propriedades do objeto recebido
    console.log("Name:", data.name);
    console.log("Age:", data.age);
    console.log("Email:", data.email);
})
.catch(error => {
    console.error("Error:", error);
});
```
