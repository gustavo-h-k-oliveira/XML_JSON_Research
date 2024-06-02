# Segurança

## Riscos de Segurança

### Injeções de JSON

Assim como a injeção de SQL, a injeção de JSON ocorre quando **dados não confiáveis são inseridos em uma estrutura JSON**, potencialmente levando a execução de código malicioso no lado do cliente.

### Cross-site Scripting (XSS)

JSON pode ser uma forma de transporte para ataques XSS, especialmente quando **usado em conjunto com APIs que retornam JSON diretamente para o navegador** do usuário.

## Mitigações

### Boas práticas para evitar vulnerabilidades

Garantir que os dados JSON recebidos sejam validados corretamente antes de serem processados, para evitar manipulação maliciosa dos dados.

**Exemplo de tratamento de texto contra Injeção de JSON com Flask**:

```python
from flask import Flask, request, jsonify

app = Flask(__name__)

@app.route('/api/data', methods=['POST'])
def process_data():
    data = request.get_json(force=True)
    # Escapar dados para prevenir JSON Injection
    processed_data = escape(data)
    return jsonify({'status': 'success'})

def escape(data):
    # Implementar lógica de escape adequada, dependendo da linguagem/framework
    return data.replace('<', '&lt;').replace('>', '&gt;')

if __name__ == '__main__':
    app.run(debug=True)
```

**Exemplo de tratamento de texto contra Cross-site Scripting com Vue.js**:

```javascript
<template>
  <div v-html="jsonData"></div>
</template>

<script>
export default {
  data() {
    return {
      jsonData: ''
    }
  },
  mounted() {
    // Assume que jsonData é obtido de uma fonte externa
    this.jsonData = this.sanitizeData(jsonData);
  },
  methods: {
    sanitizeData(data) {
      // Codificar os dados JSON para prevenir XSS
      return JSON.stringify(data).replace(/<\/?script>/g, '');
    }
  }
}
</script>
```
