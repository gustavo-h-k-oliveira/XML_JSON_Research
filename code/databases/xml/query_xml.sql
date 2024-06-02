-- Exemplo retorna o valor do texto do elemento `nome` do objeto `cliente` dentro do XML armazenado na coluna `DadosXML`
SELECT DadosXML.value('(/cliente/nome/text())[1]', 'NVARCHAR(100)') AS Nome
FROM ExemploXML
WHERE Id = 1;

-- Exemplo retorna o elemento `nome` do objeto `cliente` dentro do XML armazenado na coluna `DadosXML`
SELECT DadosXML.query('/cliente/nome') AS Nome
FROM ExemploXML
WHERE Id = 1;

-- Exemplo usa `nodes` para decompor o objeto cliente em colunas individuais `Nome` e `Idade`
SELECT C.value('(nome/text())[1]', 'NVARCHAR(100)') AS Nome,
       C.value('(idade/text())[1]', 'INT') AS Idade
FROM ExemploXML
CROSS APPLY DadosXML.nodes('/cliente') AS T(C)
WHERE Id = 1;

-- Exemplo retorna se o elemento `cliente` existe no XML armazenado na coluna `DadosXML`
SELECT Id, DadosXML.exist('/cliente[nome="João"]') AS ClienteExiste
FROM ExemploXML
WHERE Id = 1;

