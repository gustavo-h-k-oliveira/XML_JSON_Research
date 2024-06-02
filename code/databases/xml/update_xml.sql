-- Atualizar dados XML na tabela ExemploXML
UPDATE ExemploXML
SET DadosXML.modify('replace value of (/cliente/nome/text())[1] with "Pedro"')
WHERE Id = 1;

UPDATE ExemploXML
SET DadosXML.modify('replace value of (/cliente/idade/text())[1] with "35"')
WHERE Id = 1;

-- Atualizar dados XML na tabela ExemploXML com tratamento seguro de dados
DECLARE @XmlData XML = '<cliente><nome>Pedro</nome><idade>35</idade></cliente>';

UPDATE ExemploXML
SET DadosXML = @XmlData
WHERE Id = 1;
