-- Exemplo de exclusão de dados JSON de uma tabela
DELETE FROM TabelaExemplo
WHERE JSON_VALUE(DadosJSON, '$.nome') = 'João';

-- Exemplo de exclusão segura de dados JSON de uma tabela
DECLARE @nome NVARCHAR(50) = 'João';

DELETE FROM TabelaExemplo
WHERE JSON_VALUE(DadosJSON, '$.nome') = @nome;
