# Esquemas de validação

A função principal de esquemas de validação é assegurar que os dados recebidos ou armazenados atendam aos requisitos específicos de uma aplicação ou serviço.

## DTD (Document Type Definition)

DTD define a estrutura e as regras de um documento XML.

### Introdução e propósito

- **Sintaxe**: Baseada em uma linguagem específica de marcação.

- **Validação**: Documentos XML são validados em relação a um DTD para garantir que seguem a estrutura definida.

- **Características**:

    - *Elementos e Atributos*: Define quais elementos e atributos podem aparecer no documento e suas relações.

    - *Entidades*: Permite a definição de entidades para reutilizar conteúdo.

    - *Limitações*: Não suporta tipos de dados complexos e é menos expressivo que XML Schema.

### Exemplos de DTD

```xml
<!DOCTYPE note [
  <!ELEMENT note (to, from, heading, body)>
  <!ELEMENT to (#PCDATA)>
  <!ELEMENT from (#PCDATA)>
  <!ELEMENT heading (#PCDATA)>
  <!ELEMENT body (#PCDATA)>
]>
<note>
  <to>Tove</to>
  <from>Jani</from>
  <heading>Reminder</heading>
  <body>Don't forget me this weekend!</body>
</note>
```

**Funcionalidades**:

- *Definição de Elementos*: Define quais elementos podem aparecer no documento e sua hierarquia.

- *PCDATA*: Define que os elementos contêm dados de caractere.

- *Declaração*: Utiliza a declaração `<!DOCTYPE>` para especificar as regras do documento.

//

---

## XML Schema (XSD)

Um padrão mais robusto e flexível que DTD para definir a estrutura de um documento XML.

### Introdução e propósito

- **Sintaxe**: XML Schema é escrito em XML.

- **Validação**: Permite validação de documentos XML para tipos de dados específicos.

- **Características**:
    - *Tipos de Dados*: Suporta uma ampla variedade de tipos de dados (simples e complexos).

    - *Namespaces*: Permite o uso de namespaces para evitar conflitos de nomes.
    
    - *Extensibilidade*: Suporta extensões e restrições de tipos de dados, permitindo reutilização e modularidade.

    - *Expressividade*: Mais expressivo que DTD, permitindo a definição de relações complexas entre elementos.

### Exemplos de XSD

```xml
<xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema">
  <xs:element name="note">
    <xs:complexType>
      <xs:sequence>
        <xs:element name="to" type="xs:string"/>
        <xs:element name="from" type="xs:string"/>
        <xs:element name="heading" type="xs:string"/>
        <xs:element name="body" type="xs:string"/>
      </xs:sequence>
    </xs:complexType>
  </xs:element>
</xs:schema>
```

**Funcionalidades**:

- *Tipos de Dados*: Suporta tipos de dados complexos e simples.

- *Elementos e Atributos*: Define elementos e atributos com tipos específicos.

- *Namespaces*: Utiliza namespaces para evitar conflitos de nome.

---

## RelaxNG

*Regular Language for XML Next Generation*, é uma alternativa flexível ao XML Schema para a definição da estrutura XML.

### Introdução e propósito

- **Sintaxe**: Pode ser escrito em XML ou uma sintaxe compacta.

- **Validação**: Oferece uma validação mais simples e direta em comparação com XSD.

- **Características**:

    - *Simplicidade*: Mais fácil de aprender e usar.

    - *Tipos de Dados*: Suporte básico para tipos de dados.

    - *Flexibilidade*: Permite a definição de estruturas complexas de forma mais intuitiva.

    - *Compatibilidade*: Pode ser usado em conjunto com outros esquemas de validação como XSD.

### Exemplos de RelaxNG

```rnc
element note {
  element to { text },
  element from { text },
  element heading { text },
  element body { text }
}
```

**Funcionalidades**:

- *Simplicidade*: Sintaxe mais simples e intuitiva.

- *Flexibilidade*: Permite definição de estruturas complexas de forma direta.

- *Compatibilidade*: Pode ser usado com outros esquemas de validação.
