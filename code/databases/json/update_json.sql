-- Exemplo de atualização de dados JSON em uma tabela
UPDATE TabelaExemplo
SET DadosJSON = '{"nome": "Maria", "idade": 35}'
WHERE JSON_VALUE(DadosJSON, '$.nome') = 'João';

-- Exemplo de atualização segura de dados JSON em uma tabela
DECLARE @nomeAntigo NVARCHAR(50) = 'João';
DECLARE @novoJSON NVARCHAR(MAX) = '{"nome": "Maria", "idade": 35}';

UPDATE TabelaExemplo
SET DadosJSON = @novoJSON
WHERE JSON_VALUE(DadosJSON, '$.nome') = @nomeAntigo;
