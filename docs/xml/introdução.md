# Introdução

## Origem e desenvolvimento

O XML, ou **Extensible Markup Language**, surgiu em meados dos anos 90 como um padrão universal para marcação de documentos estruturados. Foi desenvolvido pelo W3C, liderado por Jon Bosak, e oficializado como padrão da web em fevereiro de 1998.

---

## Propósitos e Usos do XML

O XML é uma linguagem de marcação projetada para armazenamento e transporte de dados. Diferente do HTML, que é voltado para apresentação de documentos, o XML define o que os dados são, sendo legível tanto por humanos quanto por máquinas.

A utilização do XML pode ser aplicada em:

- **Intercâmbio de Dados**: O XML é projetado para armazenar e trocar dados, facilitando a comunicação entre sistemas incompatíveis. Isso reduz a complexidade e cria dados legíveis por diferentes tipos de aplicações.

- **Transações B2B**: O XML pode ser usado para trocar informações financeiras pela Internet, tornando-se potencialmente a linguagem principal para transações comerciais entre empresas.

- **Compartilhamento de Dados**: Como o XML armazena dados em formato de texto simples, ele oferece um método independente de software e hardware para compartilhar dados, facilitando a utilização por diferentes aplicações.

- **Armazenamento de Dados**: O XML permite armazenar dados tanto em arquivos quanto em bancos de dados, com aplicações que podem armazenar e recuperar informações e exibir os dados de forma genérica.

- **Maior Disponibilidade**: A independência do XML em relação a hardware, software e aplicações torna os dados mais acessíveis, não se limitando apenas a navegadores HTML padrão, mas estando disponíveis para outros clientes e aplicações.

### Contextos em que o XML é mais utilizado

Enquanto tecnologias alternativas como JSON se tornaram populares para troca de dados em APIs web modernas, o XML ainda é utilizado em arquivos de configuração, sistemas legados e serviços web baseados em SOAP.

### Exemplos de casos de uso

Começa com uma declaração XML e pode incluir atributos como versão e codificação (ex: UTF-8).

```xml
<?xml version="1.0" encoding="UTF-8"?>
<book>
    <title>
        Learning XML
    </title>
</book>
```

Os documentos devem ser “bem formados” e seguir as regras de sintaxe do XML, como ter tags de abertura e fechamento correspondentes.

As tags XML são sensíveis a maiúsculas e minúsculas.

```xml
<!-- Incorreto -->
<Body>See Spot run.</body>

<!-- Correto -->
<body>See Spot run.</body>
```

Todos os elementos XML devem ser adequadamente aninhados.

```xml
<!-- Incorreto -->
<b><i>This text is bold and italic.</b></i>

<!-- Correto -->
<b><i>This text is bold and italic.</i></b>
```

Todos os documentos XML devem ter um elemento raiz.

```xml
<root>
  <child>
    <subchild>.....</subchild>
  </child>
</root>
```

Os valores dos atributos sempre devem ser citados. Ou seja, possuir aspas.

```xml
<!-- Incorreto -->
<?xml version= “1.0” encoding=“ISO-8859-1”?>
<note date=05/05/05>
<to>Dick</to>
<from>Jane</from>
</note>

<!-- Correto -->
<?xml version= “1.0” encoding=“ISO-8859-1”?>
<note date=”05/05/05”>
<to>Dick</to>
<from>Jane</from>
</note>
```
