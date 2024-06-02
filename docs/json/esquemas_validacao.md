# Esquemas de validação

A função principal de esquemas de validação é assegurar que os dados recebidos ou armazenados atendam aos requisitos específicos de uma aplicação ou serviço.

## JSON Schema

Uma especificação para definir a estrutura e a validação de documentos JSON.

### Introdução e propósito

- **Sintaxe**: JSON Schema é escrito em JSON.

- **Validação**: Permite validar documentos JSON para garantir que eles seguem uma estrutura especificada.

- **Características**:

    - *Tipos de Dados*: Suporta todos os tipos de dados JSON (string, número, objeto, array, boolean, null).

    - *Regras de Validação*: Define regras como required, properties, items, minimum, maximum, etc.

    - *Extensibilidade*: Suporta a criação de esquemas reutilizáveis e referências ($ref) para componentes comuns.

    - *Expressividade*: Capaz de definir relações complexas e dependências entre propriedades.

    - *Ferramentas*: Ampla disponibilidade de bibliotecas e ferramentas para validação em diversas linguagens de programação.

### Exemplos de JSON Schema

```json
{
  "$schema": "http://json-schema.org/draft-07/schema#",
  "type": "object",
  "properties": {
    "note": {
      "type": "object",
      "properties": {
        "to": { "type": "string" },
        "from": { "type": "string" },
        "heading": { "type": "string" },
        "body": { "type": "string" }
      },
      "required": ["to", "from", "heading", "body"]
    }
  }
}
```

**Funcionalidades**:

- *Definição de Estrutura*: Define a estrutura dos dados JSON.

- *Regras de Validação*: Especifica regras como `required`, `type`, `properties`.

- *Extensibilidade*: Suporta a criação de esquemas reutilizáveis.

---

## Ferramentas de Validação

A validação de JSON verifica se um documento JSON segue as regras e estrutura definidas por um JSON Schema. Isso garante que os dados sejam corretos e aderentes ao formato esperado.

### Ferramentas disponíveis para validação de JSON

1. **Ajv (Another JSON Validator)**

Uma das bibliotecas de validação JSON mais rápidas e eficientes para JavaScript.

*Exemplo de uso*:

```javascript
const Ajv = require("ajv");
const ajv = new Ajv();
const schema = { /* JSON Schema aqui */ };
const validate = ajv.compile(schema);
const valid = validate(data);
if (!valid) console.log(validate.errors);
```

2. **JSON Schema Validator (Python)**

Biblioteca popular para validar JSON em Python.

*Exemplo de uso*:

```python
import jsonschema
from jsonschema import validate

schema = { /* JSON Schema aqui */ }
data = { /* Dados JSON aqui */ }

try:
    validate(instance=data, schema=schema)
    print("JSON é válido")
except jsonschema.exceptions.ValidationError as err:
    print("JSON inválido:", err)
```

Outros exemplos são *Everit JSON* (Java) e *Go-Validator* (Go).
