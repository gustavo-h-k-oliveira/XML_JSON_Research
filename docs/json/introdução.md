# Introdução

## Origem e desenvolvimento

JSON (JavaScript Object Notation - Notação de Objetos JavaScript) é uma formatação leve de troca de dados. Para seres humanos, é fácil de ler e escrever. Para máquinas, é fácil de interpretar e gerar. Está baseado em um subconjunto da linguagem de programação JavaScript, Standard ECMA-262 3a Edição -Dezembro - 1999.

---

## Propósitos e Usos do JSON

JSON (JavaScript Object Notation) é uma notação de objetos JavaScript que permite representar dados de forma legível e trafegável entre diferentes linguagens e protocolos, como o HTTP.

JSON é em formato texto e completamente independente de linguagem, pois usa convenções que são familiares às linguagens C e familiares, incluindo C++, C#, Java, JavaScript, Perl, Python e muitas outras.

- **Simplicidade**: o formato JSON é relativamente simples e fácil de entender. Ele usa uma sintaxe leve e minimalista, tornando-o rápido de ser processado;

- **Legibilidade**: o JSON é projetado para ser legível tanto por humanos quanto por máquinas. Sua estrutura é organizada e fácil de analisar, facilitando a depuração de erros e o trabalho das pessoas desenvolvedoras;

- **Portabilidade**: ele é independente de plataforma e pode ser utilizado em diferentes linguagens de programação. Isso facilita o compartilhamento de dados entre sistemas heterogêneos, tornando o processo mais eficiente;

- **Suporte amplo**: a maior parte das linguagens de programação possui suporte nativo ou bibliotecas que facilitam a manipulação de dados em formato JSON. Isso torna mais simples o processo de codificação e decodificação de JSON em objetos ou estruturas de dados;

- **Integração com a web**: o JSON é muito utilizado na comunicação entre servidores e clientes em aplicações web, inclusive em APIs (Interface de Programação de Aplicativos), para transferir dados entre servidor e clientes de forma mais eficiente.

### Contextos em que o JSON é mais utilizado

Por sua simplicidade, legibilidade, portabilidade e suporte amplo, o JSON é amplamente utilizado na web, especialmente em APIs para a transferência eficiente de dados.

O JSON emprega uma estrutura de pares chave-valor, sendo um formato de dados mais conciso e de fácil interpretação. É utilizado em aplicações web e APIs, sendo uma escolha comum para a transferência de dados entre cliente e servidor.

- **Manifest.json**: O manifest.json é um arquivo JSON que detalha e especifica metadados básicos sobre sua extensão, como nome, versão e permissões.

- **Package.json**: O package.json é um arquivo JSON central em projetos de desenvolvimento de software em JavaScript e Node.js para gerenciar as dependências, informações sobre o projeto, scripts de execução e metadados do projeto.

### Exemplos de casos de uso

A estrutura do JSON é constituído por:

- **Objetos**: Coleção de pares de nome/valor. Começa com `{` e termina com `}`.

```json
{
  "user": {
    "id": "11",
    "animal": "Bob",
    "idade": "2"
  }
}
```

- **Arrays**: Lista ordenada de valores. Começa com `[` e termina com `]`.

```json
{
   "cliente": {
       "id": 2020,
       "nome": "Maurílio Motta"
   },
   "pagamentos": [
       {
           "id": 123,
           "descricacao": "Compra do livro Cangaceiro JavaScript",
           "valor": 50.5
       },
       {
           "id": 124,
           "descricacao": "Mensalidade escolar",
           "valor": 1500
       }
   ]
}
```

- **Valores**: Podem ser uma *string* entre aspas duplas, um número, verdadeiro/falso, nulo, um objeto ou um array.
