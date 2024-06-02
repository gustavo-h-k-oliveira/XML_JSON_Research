# Sintaxe da estrutura

JSON é um formato leve para intercâmbio de dados, fácil de ler e escrever para humanos e fácil de parsear e gerar para máquinas. A estrutura básica do JSON inclui objetos e arrays.

## Objetos JSON

- Representados por chaves `{}`.

- Contêm pares chave-valor.

- Chaves são strings (entre aspas duplas).

- Valores podem ser strings, números, objetos, arrays, booleanos (`true`/`false`), ou `null`.

```json
{
  "nome": "João",
  "idade": 30,
  "endereço": {
    "rua": "Rua A",
    "cidade": "Cidade B"
  },
  "telefones": ["1234-5678", "9876-5432"]
}
```

---

## Arrays JSON

- Representados por colchetes `[]`.

- Contêm uma lista ordenada de valores.

- Valores podem ser de qualquer tipo permitido em JSON (strings, números, objetos, arrays, booleanos, ou `null`).

```json
[
  {
    "produto": "Caderno",
    "preço": 10.5
  },
  {
    "produto": "Caneta",
    "preço": 1.5
  }
]
```

---

## Pares chave-valor

Pares chave-valor são o núcleo do JSON. Cada chave é uma string e deve estar entre aspas duplas. Os valores podem ser de qualquer tipo permitido em JSON.

### Formato e uso

```json
{
  "chave": "valor",
  "idade": 25,
  "isEstudante": true,
  "cursos": ["Matemática", "Física"]
}
```

---

## Tipos de Dados

### Strings, números, booleanos, nulos

- **String**: Textos entre aspas duplas.

- **Número**: Números inteiros ou de ponto flutuante.

- **Objeto**: Coleção de pares chave-valor.

- **Array**: Lista ordenada de valores.

- **Boolean**: `true` ou `false`.

- **Null**: Valor nulo.

---

## Regras de Formatação

### Convenções e boas práticas

1. **Strings**: Entre aspas duplas.

```json
"nome": "João"
```

2. **Números**: Sem aspas.

```json
"idade": 30
```

3. **Booleanos**: Sem aspas.

```json
"isEstudante": true
```

4. **Null**: Sem aspas.

```json
"meioNome": null
```

5. **Objetos aninhados**:

```json
"endereço": {
  "rua": "Rua A",
  "cidade": "Cidade B"
}
```

6. **Consistência na Estrutura e Nomenclatura**: Nomes de chaves devem ser consistentes e descritivos. Use o estilo camelCase para chaves.

```json
{
  "primeiroNome": "João",
  "ultimoNome": "Silva"
}
```

7. **Formatação e Indentação**:

- **Indentação**: Use 2 ou 4 espaços para indentação (escolha um e seja consistente).

- **Espaços**: Inclua espaços após : e , para melhorar a legibilidade.

```json
{
  "nome": "João",
  "idade": 30,
  "enderecos": [
    {
      "tipo": "casa",
      "rua": "Rua A",
      "cidade": "Cidade B"
    },
    {
      "tipo": "trabalho",
      "rua": "Avenida C",
      "cidade": "Cidade D"
    }
  ]
}
```

8. **Evitando Dados Redundantes**: Devem ser evitadas para manter o JSON enxuto.

```json
// Redundante
{
  "nome": "João",
  "nomeCompleto": "João da Silva"
}

// Melhor
{
  "primeiroNome": "João",
  "ultimoNome": "da Silva"
}
```
9. **Segurança e Validação**:

- **Sanitização de entradas**: Sempre sanitizar dados antes de processar JSON.

- **Validação de dados**: Utilize esquemas de validação como JSON Schema para garantir que os dados estejam no formato correto.

```json
{
  "$schema": "http://json-schema.org/draft-07/schema#",
  "title": "Pessoa",
  "type": "object",
  "properties": {
    "nome": {
      "type": "string"
    },
    "idade": {
      "type": "integer",
      "minimum": 0
    }
  },
  "required": ["nome", "idade"]
}
```

10. **Compatibilidade de Versões**: 

- Gerenciamento de versões é importante quando os dados JSON são usados em APIs. Inclua um campo de versão quando necessário.

```json
{
  "versao": "1.0",
  "dados": {
    "nome": "João",
    "idade": 30
  }
}
```
