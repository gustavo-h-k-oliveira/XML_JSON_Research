-- Exemplo de consulta de dados JSON em uma tabela
SELECT DadosJSON
FROM TabelaExemplo
WHERE JSON_VALUE(DadosJSON, '$.nome') = 'João';

-- Exemplo de consulta segura de dados JSON em uma tabela
DECLARE @nome NVARCHAR(50) = 'João';

SELECT DadosJSON
FROM TabelaExemplo
WHERE JSON_VALUE(DadosJSON, '$.nome') = @nome;
