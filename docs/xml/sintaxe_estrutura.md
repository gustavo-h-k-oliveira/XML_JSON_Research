# Sintaxe da Estrutura

XML é uma linguagem de marcação utilizada para armazenar e transportar dados. Sua estrutura é baseada em uma hierarquia de elementos aninhados.

## Elementos e Tags

### Sintaxe básica de elementos

- Definidos por tags de abertura `<tag>` e fechamento `</tag>`.

- Podem conter texto, outros elementos (aninhados) ou ser auto-fecháveis `<tag />`.

```xml
<cliente>
  <nome>João</nome>
  <idade>30</idade>
  <endereço>
    <rua>Rua A</rua>
    <cidade>Cidade B</cidade>
  </endereço>
  <telefones>
    <telefone>1234-5678</telefone>
    <telefone>9876-5432</telefone>
  </telefones>
</cliente>
```

### Atributos dos elementos

- Definidos dentro das tags de abertura.

- Usados para fornecer informações adicionais sobre elementos.

- Formato `chave="valor"`.

```xml
<produto nome="Caderno" preço="10.5" />
<produto nome="Caneta" preço="1.5" />
```

---

## Declaração XML

### Propósito e formato

- Declaração opcional no início do documento XML.

- Especifica a versão XML e a codificação.

```xml
<?xml version="1.0" encoding="UTF-8"?>
```

---

## Espaços de Nomes (Namespaces)

### Uso e importância

- Resolvem conflitos de nomes quando XMLs de diferentes fontes são combinados.

- Definidos com o atributo `xmlns`.

```xml
<root xmlns:h="http://www.w3.org/TR/html4/" xmlns:f="http://www.w3schools.com/furniture">
  <h:table>
    <h:tr>
      <h:td>Cadeira</h:td>
      <h:td>160</h:td>
    </h:tr>
  </h:table>
  <f:table>
    <f:name>XYZ</f:name>
    <f:width>200</f:width>
  </f:table>
</root>
```

---

## Entidades

### Definição e uso

- Permitem definir fragmentos reutilizáveis dentro do documento XML.

- Úteis para representar caracteres especiais ou grandes blocos de texto.

```xml
<!DOCTYPE empresa [
  <!ENTITY gestor "Carlos">
]>

<empresa>
  <nome>&gestor;</nome>
  <departamento>TI</departamento>
</empresa>
```

---

## CDATA Sections

### Quando e como usar

- Usadas para incluir dados que não devem ser processados pelo parser XML.

- Útil para incluir códigos ou dados que contêm caracteres especiais.

```xml
<description>
  <![CDATA[
    Este é um texto com <tags> que não serão interpretadas.
  ]]>
</description>
```

---

## Sintaxe e boas práticas

### Bem-formação

1. **Aninhamento Correto**: Elementos devem ser corretamente aninhados.

```xml
<pai>
  <filho>
    <neto>valor</neto>
  </filho>
</pai>
```

2. **Atributos**: Atributos devem estar dentro das tags de abertura e seus valores devem estar entre aspas.

```xml
<elemento atributo="valor">conteúdo</elemento>
```

### Convenções de Nomenclatura

1. **Consistência**: Use uma nomenclatura consistente para tags e atributos.

2. **Nomes Descritivos**: Use nomes descritivos e significativos para elementos e atributos.

3. **Camel Case**: Use camel case para nomes de atributos (por exemplo, dataNascimento).

```xml
<pessoa dataNascimento="1990-01-01">
  <nome>Maria</nome>
</pessoa>
```

4. **Kebab Case para Elementos**: Use kebab case (hifenização) para nomes de elementos se necessário.

```xml
<pessoa-fisica>
  <nome>José</nome>
</pessoa-fisica>
```

### Documentação e Comentários

1. **Comentários**: Informações adicionais não processadas pelo parser XML. São definidos entre `<!-- e -->`.

```xml
<!-- Este é um comentário -->
<cliente>
  <nome>João</nome>
</cliente>
```

### Namespaces

2. **Prefixos Curto e Descritivos**: Use prefixos curtos e descritivos para namespaces.

```xml
<xhtml:html xmlns:xhtml="http://www.w3.org/1999/xhtml">
  <xhtml:body>
    <xhtml:p>Conteúdo aqui</xhtml:p>
  </xhtml:body>
</xhtml:html>
```

3. **DTD e XSD**: Use DTD (Document Type Definition) ou XSD (XML Schema Definition) para definir a estrutura e validar documentos XML.

```xml
<!DOCTYPE nota [
  <!ELEMENT nota (para, de, cabeçalho, corpo)>
  <!ELEMENT para (#PCDATA)>
  <!ELEMENT de (#PCDATA)>
  <!ELEMENT cabeçalho (#PCDATA)>
  <!ELEMENT corpo (#PCDATA)>
]>
```

Ou com XML Schema:

```xml
<xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema">
  <xs:element name="nota">
    <xs:complexType>
      <xs:sequence>
        <xs:element name="para" type="xs:string"/>
        <xs:element name="de" type="xs:string"/>
        <xs:element name="cabeçalho" type="xs:string"/>
        <xs:element name="corpo" type="xs:string"/>
      </xs:sequence>
    </xs:complexType>
  </xs:element>
</xs:schema>
```
