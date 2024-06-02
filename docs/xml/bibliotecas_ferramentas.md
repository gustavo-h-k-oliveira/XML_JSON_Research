# Biblioteca de ferramentas

## Características e Ferramentas do XML

### Validação e Parsing:

- *libxml2*: Uma das bibliotecas C mais populares para processamento de XML, oferece validação, parsing, e transformação de XML.

```c
xmlDoc *document = xmlReadFile("file.xml", NULL, 0); // Parsing

xmlSaveFormatFileEnc("output.xml", document, "UTF-8", 1); // Serialização

xmlNode *root_element = xmlDocGetRootElement(document); // Manipulação
```

- *xerces*: Uma biblioteca em C++ para validação e parsing XML, suportada pela Apache Software Foundation.

```java
// Parsing
DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
DocumentBuilder builder = factory.newDocumentBuilder();
Document document = builder.parse(new File("file.xml"));

// Serialização
TransformerFactory transformerFactory = TransformerFactory.newInstance();
Transformer transformer = transformerFactory.newTransformer();
DOMSource source = new DOMSource(document);
StreamResult result = new StreamResult(new File("output.xml"));
transformer.transform(source, result);

// Manipulação
Element root = document.getDocumentElement();
```

- *lxml* (Python): Fornece uma interface eficiente e fácil de usar para processamento XML e HTML, baseada em libxml2.

```python
# Parsing
from lxml import etree
tree = etree.parse("file.xml")

# Serialização
tree.write("output.xml", pretty_print=True, xml_declaration=True, encoding="UTF-8")

# Manipulação
root = tree.getroot()
```

### Transformação:

- *XSLT* (eXtensible Stylesheet Language Transformations): Ferramenta padrão para transformar documentos XML em diferentes formatos (HTML, texto, etc.).

- *xsltproc*: Um processador XSLT baseado em libxslt que permite aplicar transformações XSLT a arquivos XML. Ou seja, é uma ferramenta de linha de comando.

### Editores:

- *Oxygen XML Editor*: Um editor robusto para XML com suporte a XSLT, XQuery, e Schemas.

- *XMLSpy*: Um editor XML profissional que oferece um conjunto completo de ferramentas para desenvolvimento XML.

### Validadores Online:

- *W3C XML Validator*: Ferramenta online que verifica a conformidade de documentos XML com os padrões definidos.

### API e Bibliotecas Específicas:

- *Java* (JAXP): A API de Processamento de XML Java (JAXP) permite parsing, validação, e transformação XML.

**Exemplo de uso**:

Arquivo XML de exemplo (`input.xml`):

```xml
<?xml version="1.0"?>
<catalog>
   <book id="bk101">
      <author>Gambardella, Matthew</author>
      <title>XML Developer's Guide</title>
      <genre>Computer</genre>
      <price>44.95</price>
      <publish_date>2000-10-01</publish_date>
      <description>An in-depth look at creating applications 
      with XML.</description>
   </book>
   <!-- Mais livros em seguida -->
</catalog>
```

Arquivo XSLT (`transform.xslt`) para transformar o XML:

```xml
<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <html>
            <body>
                <h2>Book Catalog</h2>
                <table border="1">
                    <tr bgcolor="#9acd32">
                        <th>Title</th>
                        <th>Author</th>
                    </tr>
                    <xsl:for-each select="catalog/book">
                        <tr>
                            <td><xsl:value-of select="title"/></td>
                            <td><xsl:value-of select="author"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
```

Uso do `JAVAXP` para aplicar transformação XSLT em Java:

```java
import javax.xml.transform.*;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import java.io.File;

public class XMLTransform {
    public static void main(String[] args) {
        try {
            // Cria fontes para os arquivos XML e XSLT
            Source xmlSource = new StreamSource(new File("input.xml"));
            Source xsltSource = new StreamSource(new File("transform.xslt"));

            // Cria o resultado para o arquivo de saída
            Result result = new StreamResult(new File("output.html"));

            // Cria uma fábrica de transformadores
            TransformerFactory factory = TransformerFactory.newInstance();

            // Cria um transformador para o XSLT
            Transformer transformer = factory.newTransformer(xsltSource);

            // Aplica a transformação XSLT ao XML
            transformer.transform(xmlSource, result);

            System.out.println("Transformation completed successfully.");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
```

É também possível usar o `xsltproc` para aplicar a transformação XSLT com o comando:

```sh
xsltproc transform.xslt input.xml -o output.html
```

O resultado ficará armazenado no arquivo `output.html` gerado.

---

- *.NET* (System.Xml): Namespace do .NET Framework que fornece classes para trabalhar com XML, incluindo parsing, validação, e transformação.

```csharp
// Parsing
XmlDocument document = new XmlDocument();
document.Load("file.xml");

// Serialização
document.Save("output.xml");

// Manipulação
XmlElement root = document.DocumentElement;
```

