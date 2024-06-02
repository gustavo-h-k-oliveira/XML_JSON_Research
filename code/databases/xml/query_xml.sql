-- Consultar dados XML da tabela ExemploXML
SELECT Id,
       DadosXML.value('(/cliente/nome)[1]', 'VARCHAR(50)') AS Nome,
       DadosXML.value('(/cliente/idade)[1]', 'INT') AS Idade
FROM ExemploXML;

