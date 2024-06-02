const fs = require('fs');
const { promisify } = require('util');
const xml2js = require('xml2js');

const readFileAsync = promisify(fs.readFile);

// Lendo o XML do arquivo
readFileAsync('customer.xml', 'utf-8')
    .then(xml => {
        // Parseando o XML para JavaScript
        xml2js.parseString(xml, (err, result) => {
            if (err) {
                console.error('Error deserializing XML:', err);
            } else {
                // Exibindo o XML desserializado
                console.log(result);
            }
        });
    })
    .catch(err => console.error('Error reading XML file:', err));
