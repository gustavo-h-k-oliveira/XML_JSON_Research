const fs = require('fs');
const { promisify } = require('util');
const xmlbuilder = require('xmlbuilder');

const writeFileAsync = promisify(fs.writeFile);

// Objeto Customer para serialização
const customer = {
    id: 1,
    name: 'John Doe',
    age: 30
};

// Construindo o XML
const xml = xmlbuilder.create({ customer }).end({ pretty: true });

// Escrevendo o XML em um arquivo
writeFileAsync('customer.xml', xml)
    .then(() => console.log('XML serialized successfully'))
    .catch(err => console.error('Error serializing XML:', err));
