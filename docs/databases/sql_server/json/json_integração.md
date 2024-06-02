# Integração de JSON com SQL Server

## Introdução

O SQL Server oferece suporte robusto para armazenamento e manipulação de dados JSON. Esta documentação cobre os seguintes tópicos:

- Armazenamento de dados JSON
- Inserção de dados JSON
- Consulta de dados JSON
- Atualização de dados JSON
- Exclusão de dados JSON
- Índices JSON
- Casos de uso e aplicações
- Ferramentas e recursos

## Armazenamento de Dados JSON

O SQL Server oferece o tipo de dados json, que permite armazenar dados JSON de forma eficiente.

```sql
CREATE TABLE ExemploJSON (
    Id INT PRIMARY KEY,
    DadosJSON NVARCHAR(MAX)
);
```

## Inserção de Dados JSON

Para inserir dados JSON, você pode usar a sintaxe de inserção padrão.

```sql
INSERT INTO ExemploJSON (Id, DadosJSON)
VALUES (1, '{"nome": "João", "idade": 30}');
```

## Consultando Dados JSON

O SQL Server fornece funções específicas para consulta de dados JSON.

```sql
SELECT JSON_VALUE(DadosJSON, '$.nome') AS Nome
FROM ExemploJSON;
```

## Atualização de Dados JSON

Você pode modificar partes do JSON usando a função JSON_MODIFY.

```sql
UPDATE ExemploJSON
SET DadosJSON = JSON_MODIFY(DadosJSON, '$.nome', 'Maria')
WHERE Id = 1;
```

## Exclusão de Dados JSON

Para excluir dados JSON, use a sintaxe de exclusão padrão.

```sql
DELETE FROM ExemploJSON
WHERE Id = 1;
```

## Índices JSON

Crie índices JSON para melhorar a performance de consultas.

```sql
CREATE INDEX IDX_JSON ON ExemploJSON(DadosJSON);
```
