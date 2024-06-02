-- Exemplo de inserção de dados JSON em uma tabela
INSERT INTO TabelaExemplo (DadosJSON)
VALUES ('{"nome": "João", "idade": 30}');

-- Exemplo de inserção segura de dados JSON em uma tabela
DECLARE @json NVARCHAR(MAX) = '{"nome": "João", "idade": 30}';

INSERT INTO TabelaExemplo (DadosJSON)
VALUES (@json);
