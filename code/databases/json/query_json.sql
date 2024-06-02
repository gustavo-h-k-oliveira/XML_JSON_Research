-- Exemplo de consulta de dados JSON em uma tabela
SELECT DadosJSON
FROM TabelaExemplo
WHERE JSON_VALUE(DadosJSON, '$.nome') = 'João';

-- Exemplo de consulta segura de dados JSON em uma tabela
DECLARE @nome NVARCHAR(50) = 'João';

SELECT DadosJSON
FROM TabelaExemplo
WHERE JSON_VALUE(DadosJSON, '$.nome') = @nome;

-- Exemplo retorna o objeto cliente completo dentro do JSON armazenado na coluna `DadosJSON`
SELECT JSON_QUERY(DadosJSON, '$.cliente') AS Cliente
FROM ExemploJSON
WHERE Id = 1;

-- Exemplo usa `OPENJSON` para decompor o objeto cliente em colunas individuais `Nome` e `Idade`.
SELECT Id, Nome, Idade
FROM ExemploJSON
CROSS APPLY OPENJSON(DadosJSON, '$.cliente')
WITH (
    Nome NVARCHAR(100) '$.nome',
    Idade INT '$.idade'
);
