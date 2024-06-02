# Segurança

## Riscos de Segurança

### XML External Entity (XXE)

Um ataque XXE ocorre quando um invasor explora a capacidade do XML de **incluir entidades externas**, o que pode levar à divulgação não autorizada de dados ou execução remota de código.

### Amplificação de Entidade Externa (Exponential Entity Expansion)

Esse tipo de ataque explora a capacidade do XML de **incluir entidades para criar uma carga de processamento excessiva no servidor**, levando a negação de serviço.

### Blind XPath Injection

Assim como a injeção de SQL, a injeção de XPath ocorre quando **dados maliciosos são inseridos em uma consulta XPath**, potencialmente levando a vazamento de informações sensíveis ou execução de comandos indesejados.

*Exemplo*:

```xml
<!-- informações sensíveis no banco de dados -->
<users>
    <user>
        <username>admin</username>
        <password>admin123</password>
    </user>
    <user>
        <username>john</username>
        <password>password123</password>
    </user>
</users>
```

Consulta XPath capaz de alterar o valor do parâmetro `username` e obter acesso não-autorizado:

```xpath
//user[username/text()='admin' and password/text()='admin123']
```

## Mitigações

### Boas práticas para evitar vulnerabilidades

É importante validar corretamente os dados XML recebidos para evitar a manipulação maliciosa dos dados.

**Exemplo de desativação de processamento de entidades externas contra XML External Entity em Java usando `DocumentBuilderFactory`**:

```java
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.DocumentBuilder;
import org.w3c.dom.Document;
import java.io.StringReader;

public class XMLParser {

    public Document parseXML(String xmlString) throws Exception {
        // Desativar o processamento de entidades externas
        DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
        factory.setFeature("http://apache.org/xml/features/disallow-doctype-decl", true);
        
        DocumentBuilder builder = factory.newDocumentBuilder();
        return builder.parse(new InputSource(new StringReader(xmlString)));
    }
}
```

**Exemplo de limitação ou desativação de entidades permitidas contra Amplificação de Entidade Externa com C# usando `XmlDocument`**:

```csharp
using System.Xml;

public class XMLParser {

    public XmlDocument ParseXML(string xmlString) {
        // Desativar a expansão de entidades externas
        XmlDocument doc = new XmlDocument();
        doc.XmlResolver = null;

        doc.LoadXml(xmlString);
        return doc;
    }
}
```
**Exemplo de mitigação do Blind XPath Injection em Java usando `XPathExpression`**:

```java
import javax.xml.xpath.*;
import org.w3c.dom.Document;

public class XMLQuery {

    public boolean authenticateUser(String username, String password) throws Exception {
        Document xmlDoc = loadXMLDocument(); // Função para carregar o documento XML
        
        XPathFactory xpathFactory = XPathFactory.newInstance();
        XPath xpath = xpathFactory.newXPath();
        
        // Consulta XPath segura usando parâmetros
        XPathExpression expr = xpath.compile("//user[username/text()=? and password/text()=?]");
        expr.setString(1, username);
        expr.setString(2, password);
        
        // Avaliar a expressão XPath
        return (boolean) expr.evaluate(xmlDoc, XPathConstants.BOOLEAN);
    }
}
```
