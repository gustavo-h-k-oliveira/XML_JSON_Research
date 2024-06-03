-- Exemplo de criação de tabela com coluna XML
CREATE TABLE ExemploXML (
    Id INT PRIMARY KEY,
    DadosXML XML
);

-- Inserir dados XML na tabela ExemploXML
INSERT INTO ExemploXML (Id, DadosXML)
VALUES (1, '<cliente><nome>João</nome><idade>30</idade></cliente>');

INSERT INTO ExemploXML (Id, DadosXML)
VALUES (2, '<cliente><nome>Maria</nome><idade>25</idade></cliente>');

INSERT INTO ExemploXML (Id, DadosXML)
VALUES (3, '<cliente><nome>Carlos</nome><idade>40</idade></cliente>');

-- Inserir dados XML na tabela ExemploXML com parâmetros seguros
DECLARE @XmlData XML = '<cliente><nome>João</nome><idade>30</idade></cliente>';

INSERT INTO ExemploXML (Id, DadosXML)
VALUES (1, @XmlData);
