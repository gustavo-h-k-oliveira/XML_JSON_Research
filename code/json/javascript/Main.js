const fs = require('fs');

// Objeto JavaScript para serializar em JSON
const user = {
    name: 'John',
    age: 30
};

// Serialização de JavaScript para JSON
const jsonString = JSON.stringify(user);
console.log('JSON serializado:', jsonString);

// Desserialização de JSON para JavaScript
const deserializedUser = JSON.parse(jsonString);
console.log('Objeto desserializado:', deserializedUser);
